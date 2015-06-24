clc
//Intitalisation of variables
clear
Kf= 5.12
m= 0.911 //gms
m1= 50 //gms
dT= 0.603 //deg
//CALCULATIONS
M2= Kf*1000*m/(m1*dT)
//RESULTS
printf ('Molecular weight of carbon tetra chloride = %.f gms',M2)
