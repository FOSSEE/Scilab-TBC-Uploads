clc
clear
//Page number 472
//Input data 
d=9000;//The density of copper in kg/m^3 
w=63.5;//The atomic weight of copper in kg
N=6.023*10^26;//Avogadros number 
pi=3.14;//Mathematical constant of pi 
h=6.624*10^-34;//Planks constant in Js

//Calculations 
V=w/d;//The volume of copper in m^3
Ef=((h^2/(8*9*10^-31))*((3/pi)*(N/V))^(2/3))/(1.6*10^-19);//The fermi energy in eV
P=(2/3)*(N/V)*Ef;//The pressure at absolute zero for copper in N/m^2 

//Output 
printf('(a)The Fermi energy is E = %3.3f eV \n (b)The pressure at absolute zero for copper is P = %3.6g N/m^2 ',Ef,P)
