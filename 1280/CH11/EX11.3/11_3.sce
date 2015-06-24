clc
//initialisation of variables
P1= 2000 //in^3
T= 80 //F
T1= 250 //F
//CALCULATIONS
P2= (P1+14.7)*(460+T1)/(T+460)
P3= P2-14.7
//RESULTS
printf ('guage pressure = %.f psi',P3)
