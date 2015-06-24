clc
//initialisation of variables
v= 1.75*10^-3 //pa s
l= 1 //m
P= 1 //Mpa
d= 0.5 //mm
//CALCULATIONS
Q= (%pi*P*10^6*((d/2)*10^-3)^4)/(l*8*v)
//RESULTS
printf ('Q= %.2e Ns/m^2',Q)
