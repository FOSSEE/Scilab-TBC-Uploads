//clc()
//C2H5OH(l) + CH3COOH(l) = C2H5COOCH3(l) + H2O(l) H = ?
Hc2h5oh = -1366.91;//kJ/mol
Hch3cooh = -871.69;//kJ/mol
Hc2h5cooch3 = -2274.48;//kJ/mol
//to calculate heat of reaction from the heat of combustion data , 
//Hreac = Hreac - Hprod
Hreac = Hc2h5oh + Hch3cooh - Hc2h5cooch3;
disp("kJ",Hreac,"Heat of reaction for the esterification of ethyl alcohol with acetic acid = ")
