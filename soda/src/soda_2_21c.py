import cx_Oracle
import myConnection
connection = cx_Oracle.connect(myConnection.usrnm, myConnection.psswd, myConnection.dsn)

print("\nDatabase version:", connection.version)

# Enable Auto-commit
connection.autocommit = True

# Create the parent object for SODA
soda = connection.getSodaDatabase()

mymetadata = {
               "keyColumn": {
                   "name":"ID"
               },
               "contentColumn": {
                   "name": "JSON_DOCUMENT",
                   "sqlType": "BLOB"
               },
               "versionColumn": {
                   "name": "VERSION",
                   "method": "UUID"
               },
               "lastModifiedColumn": {
                   "name": "LAST_MODIFIED"
               },
               "creationTimeColumn": {
                   "name": "CREATED_ON"
               }
           }

# Create a new SODA collection called "sodacollection"
# This will open an existing collection, if the name is already in use.
collection = soda.createCollection("sodacollection",mymetadata)

# Clean up the collection if it already exists and contains documents
collection.find().remove()

# Insert a document into the collection
content = {'name': 'Blue', 'diet': 'krill', 'status': 'endangered'}

doc = collection.insertOneAndGet(content)

# Display the Key for the latest entry
key = doc.key
print('\nThe key of the new SODA document is: ', key)

# Return the most recent entry (using the key)
content = collection.find().key(key).getOne().getContent()
print(content)

# Close the database connection
connection.close()
print("\n")