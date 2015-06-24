clc
//Intitalisation of variables
clear
R= 2 //cal mole^-1 K^-1 
r= 2.72 //cm of mercury per degree
p= 76 //cm of mercury
T= 100 //C
m= 18 //gms
//CALCULATIONS
Lv= R*(273+T)^2*r/(m*p)
//RESULTS
printf ('heat of vapourisation = %.f cal g^-1',Lv)
