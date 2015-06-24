clc
//initialisation of variables
dp=1.01*10^5//Nm^-2
L=4563000*4.2//J
dv=18.7*10^-3//m^3
T=353//k
//CALCULATIONS
dT=(dp*T*dv)/L
//results
printf(' \n change in melting point= % 1f c',dT)
