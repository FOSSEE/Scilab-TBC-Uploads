//clc()
API1 = 30;//API
sp.g1 = 141.5/(131.5 + API1);// (since, API = 141.5/sp.g -131.5)
Dwater = 999;//kg/m^3;
Doil1 = sp.g1 * Dwater;
V1 = 250;//m^3
m1 = V1 * Doil1;
API2 = 15;//API
sp.g2 = 141.5/(131.5 + API2);// (since, API = 141.5/sp.g -131.5)
Dwater = 999;//kg/m^3;
Doil2 = sp.g2 * Dwater;
V2 = 1000;//m^3
m2 = V2 * Doil2;
Dmix = (m1 + m2)/(V1 + V2);
disp("kg/m^3",Dmix,"density of the mixture =")