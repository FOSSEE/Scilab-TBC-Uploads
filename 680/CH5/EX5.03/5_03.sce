//Problem 5.03:

//initializing the variables:
MWCS2 = 76.14
MWSO2 = 64.07
MWCO2 = 44
WCS2 = 500; // iin lb
WO2 = 225; // in lb

//calculation:
MWO2 = 2*16
//The initial molar amounts of each reactant is
MACS2 = WCS2/MWCS2
MAO2 = WO2/MWO2
//The amount of O2 needed to consume all the CS2, i.e., the stoichiometric amount, is then
O2 = MACS2*3

if (O2 > MAO2) then
    a = 'O2 is Limiting Reactant'
else
    a = 'CS2 is Limiting Reactant'
end

printf("\n\nResult\n\n")
printf("\n %s", a)
