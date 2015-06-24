clc
//initialisation of variables
clear
dH= 83 //cal
R= 1.98 //cal mole K^-1
T= 25 //C
M1= 128 //gms
M2= 4 //gms
M3= 2 //gms
M4= 129 //gms
I1= 4.31 //g cm^2
I2= 0.920 //g cm^2
I3= 0.459 //g cm^2
I4= 8.555 // g cm^2
//CALCULATIONS
K= 10^((-dH/(2.303*R*(273.2+T)))+1.5*log10(M1^2*M2/(M3*M4^2))+log10(I1^2*I2/(I3*I4^2)))
//RESULTS
printf ('Equilibrium constant = %.2f ',K)
