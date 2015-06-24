clc
//initialisation of variables
clear
R= 4.576 //cal deg^-1 mole^-1
T= 700 //C
Kp= 0.71
p1= 1.5 //atm
p2= 5 //atm
//CALCULATIONS
dF= -R*(273+T)*(log(Kp)-log((p1*p2)/(10*p2)))*0.77
//RESULTS
printf ('Free energy = %.f cal',dF-10)
