clc
clear
//Input data 
d=2*10^-8;//The molecular diameter in cm 
n=3*10^19;//The number of molecules per cc 
pi=3.14;//Mathematical constant of pi 

//Calculations 
L=1/((pi*(d)^2*n));//The mean free path of a gas molecule in cm 

//Output 
printf('The mean free path of a gas molecule is %3.0g cm ',L)
