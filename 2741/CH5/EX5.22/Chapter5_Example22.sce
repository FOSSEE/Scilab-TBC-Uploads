clc
clear
//Input data 
n=2.25*10^-4;//The viscosity of the gas in dynes/cm^2 
C=4.5*10^4;//The RMS velocity of the molecules in cm/s 
d=10^-3;//The density of the gas in g/cc 

//Calculations 
L=(3*n)/(d*C);//The mean free path of the molecules in cm 

//Output 
printf('The mean free path of the molecules is %3g cm ',L)
