// To actual rotor speed and the rotor frequency at 3 percent slip

clc;
clear;

P=2;
f=50;
V=400;
Vph=V/sqrt(3);
s=3/100;

Ns=120*f/P;

Nr=Ns*(1-s);

rf=s*f; // Rotor Frequency

printf('The Actual rotor speed = %g rpm \n',Nr)
printf('The rotor frequency = %g Hz \n',rf)
