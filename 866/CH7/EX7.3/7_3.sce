clc
//initialisation of variables
W= 10*10^3 //KN
L= 500 //mm
D= 200 //mm
T= 2 //mm
G= 25000 //N/mm^2
//CALCULATIONS
Tav= W/(D*T)
gama= Tav/G
deltas= gama*L
//RESULTS
printf ('Tav= %.2f N/mm^2',Tav)
printf (' \n gama=%.3f rad',gama)
printf (' \n deltas=%.2f mm',deltas)
