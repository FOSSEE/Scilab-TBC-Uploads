clc
clear
//Page number 472
//Input data 
n=3*10^25;//The number of molecules per cubic metre 
d=3.6*10^-10;//The diameter of oxygen molecule in m 
M=32;//Molecular weight of oxygen 
N=6.023*10^26;//Avogadro number 
k=1.38*10^-23;//Boltzmans constant in J/K 
T=273;//The temperature at NTP in K 
pi=3.14;//The mathematical constant of pi 

//Calculations 
m=M/N;//The mass of oxygen atom in kg 
V=((8*k*T)/(pi*m))^(1/2);//Average speed of oxygen molecule at 273K in m/s 
c=pi*d^2*V*n;//The collision frequency of the molecules 
l=1/(pi*d^2*n);//The mean free path in m 

//Output 
printf('(a)The collision frequency of the molecules is  %3.2g collisions/second \n (b)The mean free path is  %3.4g m ',c,l)
