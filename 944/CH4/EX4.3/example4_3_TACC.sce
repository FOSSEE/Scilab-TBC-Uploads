//example 4.3

clear;
clc;

//Given:
M=2.5;//mass of a substance[Kg]
x=0.6;//fraction of vapour phase 
Ug=1105;//specific internal energy of saturated vapour[J/Kg]
Ul=298;//specific internal energy of saturated liquid[J/Kg] 


//to find the total internal energy of the mixture
U=M*[(1-x)*Ul+x*Ug];
printf("The total internal energy of the mixture = %f J", U)
 