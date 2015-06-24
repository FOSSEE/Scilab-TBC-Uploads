clc;clear;
//Example 13.1
//calculation of rate of flow of photons

//given values

l=5893*10^-10;//wavelength of light in m 
P=40;//power of sodium lamp in W
d=10;//distance from the source in m
s=4*%pi*d^2;//surface area of radius in m^2
c=3*10^8;//velocity of light in m/s
h=6.626*10^-34;//Planck's constant in Js
//calculation
E=P*1;//
disp(E,'total energy emitted per second(in Joule)is');
n=E*l/(c*h);//total no of photons
R=n/s;
disp(R,'rate of flow of photons per unit area (in /m^2) is')