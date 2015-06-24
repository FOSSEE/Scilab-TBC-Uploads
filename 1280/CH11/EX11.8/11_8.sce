clc
//initialisation of variables
t= 5 //min
Qr= 10 //cfm
P1= 125 //psi
P2= 100 //psi
//CALCULATIONS
Vr= Qr*t*14.7/(P1-P2)
//RESULTS
printf ('Size of reservoir = %.1f ft^3',Vr)
