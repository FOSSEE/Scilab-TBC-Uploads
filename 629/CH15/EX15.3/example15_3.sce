clear
clc
//Example 15.3 RESISTANCE COEFFICIENT FOR BOULDERS
l=100; //width[ft]
y=4.3; //depth[ft]
d84=0.72; //[ft]
//for wide channel, take Rh=b
Rh=y 
//Resistance coefficient
f=(1.2+(2.03*(log10(Rh/d84))))^-2 
printf("\nThe value of resistance coefficient = %.3f\n",f)