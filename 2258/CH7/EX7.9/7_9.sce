clc();
clear;
// To calculate the resistivity
ni=2.4*10^19;
mew_e=0.39;
mew_h=0.19;
e=1.6*10^-19;
sigmai=ni*e*(mew_e+mew_h);
rhoi=1/sigmai;
printf("resistivity is %f ohm m",rhoi);
