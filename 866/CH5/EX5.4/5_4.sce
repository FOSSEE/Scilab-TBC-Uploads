clc
//initialisation of variables
L= 200 //m
D= 18 //m
h= 6 //m
w= 10 //KN/m
//CALCULATIONS
L2= L/(sqrt((D-h)/D)+1)
H= w*L2^2/(2*D)
Tmax= sqrt((w*L2)^2+H^2)
alphamax= atand(w*L2/H)
printf ('L2= %.1f m',L2)
printf (' \n H=%.1f KN',H)
printf (' \n Tmax=%.1f KN',Tmax)
printf (' \n alphamax=%.1f degrees',alphamax)
