clc;clear;
//Example 1.7

//constants used
g=9.81;//acceleration due to gravity in m/s^2;

//given values
h1=0.1;
h2=0.2;
h3=0.35;//respective heights in m
pw=1000;
pHg=13600;
poil=800;//density of water, mercury and oil in kg/m^3
Patm=85.6;

//calculation
P1=Patm-(pw*g*h1+poil*g*h2-pHg*g*h3)/1000;//calculating pressure using liquid at same height have same pressure
disp(P1,'the air pressure in tank in kPa is ')
