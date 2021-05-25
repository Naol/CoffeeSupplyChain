# CoffeeSupplyChain

Contract Address - 0x54399e8324De566Ce4a4CdCd343e33EB9c59f506

Libraries

FrameWork - Truffle

IPFS - No

Truffle Version - v5.3.0

Node Version - v10.16.3

Web3 Version - 1.2.1

# CoffeeSupplyChain
UML files can be found in the UML.docx file

#Steps on How to use the DAPP

This DAPP is designed to track the supply chain process of coffee from the time it is harvested to the time it reaches consumer's cups.

The supply chain process of coffee in this example starts out when a farmer harvests the coffee and consecutively processes, packs and auctions the items for sale. After that, distributors can purchase and ship the coffee to retailers. Retailers, then receive the shipped goods and make it available for purchase for consumers at home. This is DAPP is used to track the source of coffee and the integrity in the supply chain process.

Details of the UML diagram are listed in the UML.docx file within this repo

The DAPP starts out with a form for farm details of the coffee source to be entered. This option is only available for farmers and it allows them to record when coffee is harvested (when the harvest button is clicked), processed (when the process button is clicked), packed (when the pack button is clicked) and  when the coffee is finally for sale (When ForSale button is clicked). You can see at the bottom of the page when an action is executed along with its transaction ID on the blockchain. 

//picture

Then, there is a different form below for distributors/retailers and consumers that allows them to interact and commit data on-chain. An address with a distributor role can buy then ship the items by clicking the buy and ship buttons respectively on that form. After that, Retailers and consumers can record when they receive and  purchase the coffee, respectively, by clicking on the Receive and Purchase buttons. 

//


At the End, (Most important part) This DAPP makes it possible to fetch the supply chain process of the coffee by searching using the coffee's SKU and UPC to get the desired supply chain process of the coffee.
