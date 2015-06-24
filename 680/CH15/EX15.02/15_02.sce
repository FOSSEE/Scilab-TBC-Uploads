//Problem 15.02:

//initializing the variables:

//calculation:
//The first step is to convert the equipment, installation, and operating costs to total\ncosts by multiplying each by the total gas flow, 100,000 acfm. Hence, for the finned exchanger,
//the total costs are
Equipmentcost = 100000*3.1 // in $
Installationcost = 100000*0.80 // in $
Operatingcost = 100000*0.06 // in $
//Note that the operating costs are on an annualized basis. The equipment cost and the installation\ncost must then be converted to an annual basis using the CRF. From Equation (15.3)
CRF = (0.1)*(1+0.1)^20/[(1+0.1)^20 - 1]
//The annual costs for the equipment and the installation is given by the product of the CRF and\nthe total costs of each:
Equipmentannualcost = 0.11746*Equipmentcost
Installationannualcost = 0.11746*Installationcost
//The calculations for the 4-pass and the 2-pass exchangers are performed in the same manner.\nThe three preheaters can be compared after all the annual costs are added. The tabulated results\nare provided in Table 15.5. 
// total annual costs
CF = 65000
C4 = 77385
C2 = 60111

printf("\n\nResult\n\n")
printf("\n According to the analysis, Total Annual Costs for Finned exchanger = $%.0f, for 4-Pass Exchanger = $%.0f and for 2-Pass Exchanger = $%.0f.\nTherefore 2-pass exchanger is the most economically attractive device since the annual cost is the lowest.",CF,C4,C2)
