/obj/machinery/vending/autodrobe/Initialize()
	var/list/extra_products = list(

		/obj/item/clothing/mask/balaclava/breath/hijab = 4,
		/obj/item/clothing/head/turban = 4
	)
	var/list/extra_contraband = list()
	var/list/extra_premium = list()

	LAZYADD(products, extra_products)
	LAZYADD(contraband, extra_contraband)
	LAZYADD(premium, extra_premium)
	. = ..()
