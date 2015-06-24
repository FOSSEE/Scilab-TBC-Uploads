clc();
clear;
// To calculate the conductivity of intrinsic silicon and resultant conductivity
ni=1.5*10^16;   //intrinsic concentration per m^3
e=1.6*10^-19;
mew_e=0.13;    //mobility of electrons in m^2/Vs
mew_h=0.05;    //mobility of holes in m^2/Vs
ND=5*10^20;    //conductivity in atoms/m^3
sigma1=ni*e*(mew_e+mew_h);
nd=(ni^2)/ND;
sigma2=ND*e*mew_e;
NA=5*10^20;
na=(ni^2)/NA;
sigma3=NA*e*mew_h;
printf("intrinsic conductivity of Si is %f ohm-1 m-1",sigma1);
printf("conductivity of Si during donor impurity is %f ohm-1 m-1",sigma2);
printf("conductivity of Si during acceptor impurity is %f ohm-1 m-1",sigma3);
