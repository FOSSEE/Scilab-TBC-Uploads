clc
clear
//Page number 488
//Input data 
d=7.7*10^3;//The density of aluminium in kg/m^3 
w=27;//The atomic weight of Al in kg/k.mol
N=6.023*10^26;//The number of free electrons in Al 
k=1.38*10^-23;//The boltzmann constant in J/K 
h=6.62*10^-34;//Planks constant in J.s 
m=9.1*10^-31;//The given mass of electrons in kg 
pi=3.14;//The mathematical constant of pi 

//Calculations 
V=w/d;//The volume occupied by Al in m^3/k.mol
E=(((3*(N/V))/pi)^(2/3))*(h^2)*(1/8)*(1/m);//The fermi energy for aluminium in J 
EF=E/(1.6*10^-19);//The fermi energy for aluminium in eV 
p=(2/3)*(N/V)*(E);//The pressure of electrons in aluminium at absolute zero in N/m^2 

//Output 
printf('The fermi energy for aluminium at absolute zero is  %3.3f eV \n The pressure of electrons in aluminium at absolute zero is  %3.4g N/m^2',EF,p)

