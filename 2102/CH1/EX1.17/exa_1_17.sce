// Exa 1.17
clc;
clear;
close;
// Given data
ni= 1.8*10^16;// in /m^3
q= 1.6*10^-19;// in C
em=0.14;// electron mobility in m^2/v-sec
hm=0.05;// hole mobility in m^2/v-sec
resistivity= 1.2;// in Ωm
n= 1/(q*em*resistivity);// in /m^3
disp(n,"The electron concenration in /m^3 is :")
p= ni^2/n;// in /m^3
disp(p,"The hole concentration in /m^3 is : ")
