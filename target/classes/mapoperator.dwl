%dw 1.0
%output application/xml
---
products : {
	(payload map {
		product:{
	pId:$.productId,
	pName:$.productName,
	pBrand:$.brand,
	pOrgPrice:$.originalPrice,
	pOff:{
	    pOffPrice:$.offer.offerPrice,
	    pOffValid:$.offer.offerValid
	    },
	   pimages:{
			  ( $.images map {
			   	image:$
			   })
			   
			
			}
	}
		
	})
}

	
	