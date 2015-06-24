// Exa 2.33
clc;
clear;
close;
// Given data
e=1.6*10^-19;// in C
a= 0.004*0.0015;// in m^2
ni= 2.5*10^19;// per m^3
miu_e= 0.38;// in m^2/ v-s
miu_p= 0.18;// in m^2/v-s
V=10;// in V
i= 25;// in mm
i=i*10^-3;// in m
E= V/i;// in V/m
// Part (a)
ve= miu_e*E;// in m/sec
disp(ve,"Electric drift velocity in m/sec is : ")
vp= miu_p*E;// in m/sec
disp(vp,"Hole drift velocity in m/sec is : ")

// Part (b)
sigma_i= ni*e*(miu_e+miu_p);// in (Ωcm)^-1
disp(sigma_i,"Intrinsic carrier conductivity of Ge in (Ωcm)^-1 is : ")

// Part (c)
I= sigma_i*E*a;// in A
I=I*10^3;// in mA
disp(I,"Total current in mA is : ")
