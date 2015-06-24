clc
//initialisation of variables
k1= 5.67 //ft/day
k2= 11.34 //ft/day
//from graph
Nd= 8
Nf= 2.5
H= 20
//calculations
q= sqrt(k1*k2)*H*Nf/Nd
//results
printf ('average rate of flow = % 2f ft^3/day/ft ',q)
