//Problem 15.03:

//initializing the variables:

//calculation:
//For both units
CRF = (0.12)*(1+0.12)^12/[(1+0.12)^12 - 1]
//Annual capital and installation costs for the liquid injection (LI) unit are
LIcosts = (2625000 + 1575000)*0.1614
//Annual capital and installation costs for the rotary kiln (RK) unit are
RKcosts = (2975000 + 1700000)*0.1614
//A comparison of costs and credits for both incinerators is given in Table 15.7.

PLI = 272000
PRK = 420000

printf("\n\nResult\n\n")
printf("\n Profits for Liquid Injection = $%.0f/yr and for Rotary Kiln = $%.0f/yr.\nTherefore a rotary kiln incinerator is recommended.",PLI,PRK)
