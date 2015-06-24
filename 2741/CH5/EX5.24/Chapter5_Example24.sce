clc
clear 
//Input data 
p=760;//The given pressure in mm of Hg 
T=273;//The temperature of the chamber in K 
V=22400;//The volume of the gas at N.T.P in cc 
p1=10^-6;//The pressure in the chamber in mm of mercury pressure 
N=6.023*10^23;//The Avogadro number 
d=2*10^-8;//Molecular diameter in cm 
pi=3.14;//Mathematical constant of pi 

//Calculations 
n=(N*p1)/(V*p);//The number of molecules per cm^3 in the chamber in molecules/cm^3 
L=1/(pi*(d)^2*n);//The mean free path of the gas molecules in the chamber in cm 

//Output 
printf('The mean free path of gas molecules in a chamber is %3.4g cm ',L)
