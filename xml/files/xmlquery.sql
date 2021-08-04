SELECT xmlquery(
      '<POSummary lineItemCount="{count($XML/PurchaseOrder/LineItems/ItemNumber)}">;{
         $XML/PurchaseOrder/User,
         $XML/PurchaseOrder/Requestor,
         $XML/PurchaseOrder/LineItems/LineItem[2]
       }
       </POSummary>'
      passing xml_document AS "XML"
      returning content
    ).getclobval() initial_state
    FROM  xpurchase
    WHERE xmlExists(
      '$XML/PurchaseOrder[CostCenter=$CS]'
       passing xml_document AS "XML",
      'R20' AS "CS"      );