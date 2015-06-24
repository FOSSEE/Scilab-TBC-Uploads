//Exa 3.4
clc;
clear;
close;
//given data :
r=1;//in Km
r=r*10^3;//in m
I=0.5;//in A
//For theta = 45 degree
theta=45 ;//in degree
E=(60*I/r)*((cos(%pi*cos(theta*%pi/180)/2))/sin(theta*%pi/180));
disp(E*10^3,"E-Field for 45 degree angle in mV/m :");
ETA_o=120*%pi;//constant
H=E/ETA_o;//in A/m
disp(H*10^3,"H-Field for 45 degree angle in mV/m :");

//For theta = 90 degree
theta=90 ;//in degree
E=(60*I/r)*((cos(%pi*cos(theta*%pi/180)/2))/sin(theta*%pi/180));
disp(E*10^3,"E-Field for 90 degree angle in mV/m :");
ETA_o=120*%pi;//constant
H=E/ETA_o;//in A/m
disp(H*10^3,"H-Field for 90 degree angle in mV/m :");