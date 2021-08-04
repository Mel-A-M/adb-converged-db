Insert into xpurchase values ('<PurchaseOrder>
  <PONumber>10001</PONumber>
  <Reference>MSD-20200505</Reference>
  <Requestor>MS Dhoni</Requestor>
  <User> TGATES </User>
  <CostCenter>A50</CostCenter>
  <ShippingInstructions>
    <name>MS Dhoni</name>
    <Address>
      <street>200 Sporting Green</street>
      <city>South San Francisco</city>
      <state>CA</state>
      <zipCode>99236</zipCode>
      <country>United States of America</country>
    </Address>
    <Phone>
      <type>Office</type>
      <number>131-555-5589</number>
    </Phone>
  </ShippingInstructions>
  <LineItems>
    <ItemNumber>1</ItemNumber>
    <Part>
      <Description>Ivanhoe</Description>
      <UnitPrice>19.95</UnitPrice>
      <UPCCode>66479101648</UPCCode>
    </Part>
    <Quantity>2</Quantity>
  </LineItems>
  <LineItems>
    <ItemNumber>2</ItemNumber>
    <Part>
      <Description>Karaoke: Classic Country Hits Vol. 3 203</Description>
      <UnitPrice>19.95</UnitPrice>
      <UPCCode>13023003897</UPCCode>
    </Part>
    <Quantity>2</Quantity>
  </LineItems>
  <LineItems>
    <ItemNumber>3</ItemNumber>
    <Part>
      <Description>Urban Legend</Description>
      <UnitPrice>19.95</UnitPrice>
      <UPCCode>43396030916</UPCCode>
    </Part>
    <Quantity>9</Quantity>
  </LineItems>
  <Special_Instructions>COD</Special_Instructions>
</PurchaseOrder>
');
commit;