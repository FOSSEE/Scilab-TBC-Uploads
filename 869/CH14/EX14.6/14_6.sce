clc
//initialisation of variables
P= 100 //kips
M= 400 //kip in
A= 14.7 //in^2
Z= 80.7 //in^3
//CALCULATIONS
Smax= -(P*10^3)/A-(M*10^3)/Z
Smin= -(P*10^3)/A+(M*10^3)/Z
//RESULTS
printf ('Maximum stress= %.1f psi',Smax)
printf (' \n Minimum stress=%.1f psi',Smin)
