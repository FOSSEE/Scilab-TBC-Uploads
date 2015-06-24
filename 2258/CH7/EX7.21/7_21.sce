clc();
clear;
// To calculate the conductivity and equilibrium hole concentration
mew_e=0.13;    //electron mobility in m^2/Vs
mew_h=0.048;   //hole mobility in m^2/Vs
ni=1.5*10^16;
e=1.6*10^-19;
T=300;   //temp in K
ND=10^23;    //density per m^3
sigmai=ni*e*(mew_e+mew_h);
sigma=ND*mew_e*e;
p=(ni^2)/ND;
printf("conductivity of intrinsic Si is %f s",sigmai);
printf("conductivity is %f s",sigma);
printf("equilibrium hole concentration per m^3 is");
disp(p);

//answers for sigmai and sigma given in the book are wrong
