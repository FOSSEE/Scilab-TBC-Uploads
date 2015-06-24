clc();
clear;
// To calculate the resistivity
ni=2.37*10^19;   //intrinsic carrier density per m^3
mew_e=0.38;    //in m^2/Vs
mew_n=0.18;    //in m^2/Vs
e=1.6*10^-19;
sigmai=ni*e*(mew_e+mew_n);
rho=1/sigmai;
printf("resistivity is %f ohm m",rho);
