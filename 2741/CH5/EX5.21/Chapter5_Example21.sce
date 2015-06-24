clc
clear
//Input data 
n=1.66*10^-4;//The viscosity of the gas in dynes/cm^2 
C=4.5*10^4;//The R.M.S velocity of the molecules in cm/s 
d=1.25*10^-3;//The density of the gas in g/cc 
N=6.023*10^23;//The Avogadro number 
V=22400;//The volume of a gas at N.T.P in cc
pi=3.142;//The mathematical constant of pi 

//Calculations 
L=(3*n)/(d*C);//The mean free path of the molecules of the gas in cm 
F=(C/L);//The frequency collision in per sec 
n=N/V;//Number of molecules per cc
D=1/((1.414*pi*n*L)^(1/2));//Molecular diameter of the gas molecules in cm 

//Output 
printf('(1)The mean free path of the molecules of the gas is %3.0g cm \n (2)The frequency of collision is N = %3.0g /sec \n (3)Molecular diameter of the gas molecules is d = %3.0g cm ',L,F,D)

