//Caption: Find average reactance voltage produce due to commutation
//Exa:7.14
clc;
clear;
close;
p=4//Number of poles
I=300//Current delievered by generator on full load(in A)
L=0.02*(10^(-3))//Inductance of each coil(in mH)
a=2//Wavw wound
i=I/2//Current in conductors in each path(in A)
T_c=0.00174//Time of commutation(in sec)
E_r=(2*L*i)/T_c
disp(E_r,'Average reactance voltage(in volts)=')