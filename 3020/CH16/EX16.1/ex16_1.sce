clc;
clear all;
e = 1.6e-19; // Charge of an electron
m = 9.11e-31; // Mass of an electron in Kg
r = 1.73e-8 ; // Resistivity of copper in ohm meter
at = 63.5; // Atomic weight of copper in gm
d = 8.92e3; // Density of copper in Kg per cubic meter
N = 6.023e26; // Avagadros number
n = (N*d)/at; //Carrier Concentration
rhoc = 1/r // Conductivity of copper
t = (rhoc*m)/(n*e^2); //Average collision time
u = rhoc/(n*e);// Mobility of electrons in copper
disp('m^2/(V.s)',u,'Mobility of electrons in copper is')
disp('s',t,'Average time collision of electrons in copper')
//Wrong answer printed in textbook of aberage time collision
