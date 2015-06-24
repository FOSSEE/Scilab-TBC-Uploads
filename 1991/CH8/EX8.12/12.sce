clc
clear
//input
v=250 //dc voltage
s=0.22 //length
d=4*10^-3 //diameter
//calculation
q=8.9*10^-12*1*0.22*0.22*250/(4*10^-3)//for air
q1=8.9*10^-12*6.8*0.22*0.22*250/(4*10^-3)//for material
//output
printf("the permittivity  for air is %3.3e C",q)
printf("\n the relative permittivity for material is %3.3e C",q1)
