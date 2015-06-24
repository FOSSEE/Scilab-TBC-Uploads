clc;clear;
//Example 13.6
//calculation of de Broglie wavelength 

//1)given values
e=1.6*10^-19;
h=6.626*10^-34;//Planck's constant in Js
V=182;//potential difference in volts
m=9.1*10^-31;//mass of e in kg


//1)calculation

l=h/sqrt(2*e*m*V);
disp(l,'de Brogliewavelength (in m)is');


//2)given values
m1=1;//mass of object in kg
v=1;//velocity of object in m/s
l1=h/(m1*v);
disp(l1,'debrogie wavelength of object in m) is');