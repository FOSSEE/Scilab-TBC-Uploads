clear;
clc

//Example 2b
//To find the resistivity of intrinsic germanium at 300K

//Given Values

Av=6.02*(10^23) //Avogadro No.
m=72.6 //Molar mass of germanium in gm/moles
d=5.32//density in gm/cm^3
ni=2.5*(10^13);//in cm^-3
n=ni; 
p=ni;//n=magnitude of free electrons, p=magnitude of holes, ni=magnitude of intrinsic concentration
q=1.6*(10^-19);//Charge of an Electron
yn=3800;//in cm^2/V-s
yp=1800;//in cm^2/V-s

//Required Formula
A=ni*q*(yn+yp); //Conductivity
disp('ohm-cm^-1',A,'Conductivity is =');

R =1/A //Resistivity
disp('ohm-cm',R,'Resistivity is =');

//End