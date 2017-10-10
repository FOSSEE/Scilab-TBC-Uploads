//Initialisation of variables
clc

A=1.748                 //Madelung Constant    
N=6.02*10**26           //Avagadro Number
e=1.6*10**-19
n=9.5
r=(0.324*10**-9)*10**3
E=8.85*10**-12
//Calculations
U=((N*A*(e)**2)/(4*%pi*E*r))*(1-1/n)       //Cohesive energy

//Result
printf('Cohesive energy =%0.2f *10**3 kJ/kmol \n",(U/10**3))
printf('//Answer varies due to rounding of numbers')
