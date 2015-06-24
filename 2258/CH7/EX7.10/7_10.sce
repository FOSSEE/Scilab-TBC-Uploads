clc();
clear;
// To calculate the resistance
l=1;    //length in cm
l=l*10^-2;    //length in m
e=1.6*10^-19;
w=1;    //width in mm
w=w*10^-3;    //width in m
t=1;     //thickness in mm
t=t*10^-3;      //thickness in m
A=w*t;
ni=2.5*10^19;
mew_e=0.39;
mew_p=0.19;
sigma=ni*e*(mew_p+mew_e);
R=l/(sigma*A);
printf("resistance of intrinsic Ge rod is %f ohm",R);
