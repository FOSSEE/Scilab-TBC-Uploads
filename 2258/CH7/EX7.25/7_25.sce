clc();
clear;
// To calculate the resistivity of doped Ge
ni=2.5*10^19;   //density of charge carriers in m^3
r=1/(10^6);    //ratio
e=1.6*10^-19;
mew_e=0.36;   //mobility of electrons in m^2/Vs
mew_h=0.18;   //mobility of holes in m^2/Vs
N=4.2*10^28;    //number of Si atoms per m^3
Ne=r*N;
printf("number of impurity atoms per m^3 is");
disp(Ne);
Nh=(ni^2)/Ne;
sigma=(Ne*e*mew_e)+(Nh*e*mew_h);
rho=1/sigma;
printf("the resistivity of doped Ge is %f ohm m",rho);
