//clc()
P = 500;//kPa
SV = 0.2813;//m^3/kg
Vsaturatedl = 1.093 * 10^-3;//m^3/kg
Vsaturatedv = 0.3747;//m^3/kg
// let the fraction of vapour be y
//(1-y)*Vsaturatedl + y*Vsaturatedv = SV
//then we get, (1-y)*(1.093*10^-3) + y*(0.3747) = 0.2813
y = (SV - Vsaturatedl)/(Vsaturatedv - Vsaturatedl);
P1 = y * 100;
P2 = 100 - P1;
disp("%",P1,"Percentage of Vapour = ")
disp("%",P2,"Percentage of Liquid = ")