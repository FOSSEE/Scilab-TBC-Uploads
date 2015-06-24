clc();
clear;
// To calculate the velocity and kinetic energy of electron
h=6.626*10^(-34);
m=9.1*10^-31;   //mass in kg
lamda=1.66*10^-10;   //wavelength in m
v=h/(m*lamda);    //velocity in m/sec
printf("velocity of electron in m/sec is");
disp(v);
v_km=v*10^-3;    //velocity in km/sec
printf("velocity of electron is %f km/sec",v_km);
E=(1/2)*m*v^2;    //kinetic energy in joule
EeV=E/(1.6*10^-19);    //energy in eV
printf("kinetic energy of electron in Joule is");
disp(E);
printf("kinetic energy of electron is %f eV",EeV);
