//Ex:2.50
clc;
clear;
close;
R=3.8*10^5;// earth moon distance in km
R1=3.8*10^5*10^3;// earth moon distance in m
Pt=1;// transmitter power in Watts
Pd=Pt/(4*%pi*R^2);// power density at earth in W/m^2
n=120*%pi;// efficiency
pn=5.513*10^-13;// multiplication of P(poynting vector) and n(efficiency)
E=sqrt(2*Pd*n);// electric field in V/m
Erms=E/sqrt(2);// rms value of E
Hrms=Erms/n;// rms value of H
c=3*10^8;// the speed of light in m/s
t=R1/c;// time taken by the signal to reach earth
printf("The power density at earth = %f*10^-13 W/m^2", Pd*10^13);
printf("\n The rms value of E = %f*10^-5 V/m", Erms*10^5);
printf("\n The rms value of H = %f*10^-8 AT/m", Hrms*10^8);
printf("\n The time taken by the signal to reach earth = %f sec", t);