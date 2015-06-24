//Exa2.20
clc;
clear;
close;
//given data
alpha20=1/254.5;// in ohm/ohm/degree C
t2=60;//degree C
t1=20;//degree C
rho0=1.6*10^-6;
alpha60=1/(1/alpha20+(t2-t1));
disp("Temperature coefficient of resistance at 60 degree C is : "+string(alpha60)+" ohm/ohm/degree C");
//from alpha20=1/(1/alpha0+20)
alpha0=1/(1/alpha20-20);
//Formula rho60=rho0*(1+alpha0*t)
rho60=rho0*(1+alpha0*t2);
disp("Specific resistance at 60 degree C is : "+string(rho60)+" ohm-cm")