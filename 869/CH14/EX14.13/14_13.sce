clc
//initialisation of variables
d= 4 //in
T= 40000 //lb in
Th= 20000 //lb in
//CALCULATIONS
t= T*(d/2)*32/(%pi*d^4)
S= Th/(%pi*(d/2)^2)
Smax= -(S/2)-sqrt(t^2+(S/2)^2)
Tmax= sqrt(t^2+(S/2)^2)
//RESULTS
printf ('Maximum normal stress= %.1f psi',Smax)
printf (' \n Maximum shearing stress=%.1f psi',Tmax)
