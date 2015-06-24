// Exa 5.1
clc;
clear;
close;
// Given data
T1 = 550;// in degree C
T1 = T1 + 273;// in K
T2 = 27;// in degree C
T2 = T2 + 273;// in K
Eta = ((T1-T2)/T1)*100;// in %
disp(Eta,"Maximum possible efficiency for staem turbine plant in % is");
T1 = 2500;// in degree C
T1 = T1 + 273;// in K
T2 = 400;// in degree C
T2 = T2 + 273;// in K
Eta = ((T1-T2)/T1)*100;// in %
disp(Eta,"Maximum possible efficiency for internal combustion engine in % is");
T1 = 450;// in degree C
T1 = T1 + 273;// in K
T2 = 15;// in degree C
T2 = T2 + 273;// in K
Eta = ((T1-T2)/T1)*100;// in %
disp(Eta,"Maximum possible efficiency for nuclear power plant in % is");
