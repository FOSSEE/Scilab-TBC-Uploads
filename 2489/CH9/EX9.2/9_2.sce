clc
//Intitalisation of variables
clear
dT= 0.170 //C
M2= 60.06 //gms
w1= 22.5 //gms
w2= 0.45 //gms
R= 1.987 //cal
T= 100 //C
lv= 539.9 //cal g^-1
//CALCULATIONS
Kb= dT*M2*w1/(1000*w2)
Kb1= R*(273.2+T)^2/(lv*1000)
//RESULTS
printf ('Eleveation constant of water = %.3f ',Kb)
printf ('\n Eleveation constant of water = %.3f ',Kb1)
