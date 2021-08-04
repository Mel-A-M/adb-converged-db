  SELECT XMLSERIALIZE(CONTENT COLUMN_VALUE AS CLOB INDENT SIZE=2)
  FROM  xpurchase xp,
    XMLTable(
      '<Summary>;
       {
        for $r in /PurchaseOrder/LineItems/Part
        return $r/Description
       }
       </Summary>'
       passing xml_document
    )
    WHERE xmlexists('/PurchaseOrder/LineItems/Part[UnitPrice/text()=$UnitPrice]' passing xml_document, '19.95' AS "UnitPrice" );