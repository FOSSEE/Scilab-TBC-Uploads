clc
//initialisation of variables
T= 25 //C
T1= 75 //C
k= 6.45 //cal per mole per degree
k1= 1.41*10^-3 //cal per mole per degree k^-1
k2= -8.1*10^-8 //cal per mole per degree k^-2
m= 14 //gms
M= 28 //gms
//CALCULATIONS
Cp= k+k1*(273+T)+k2*(273+T)^2
Cp1= k+k1*(273+T1)+k2*(273+T1)^2
cp= (Cp+Cp1)/2
H= (m/M)*cp*(T1-T)
H1= (m/M)*(k*(T1-T)+(k1/2)*((273+T1)^2-(273+T)^2)+(k2/3)*((273+T1)^3-(273+T)^3))
//RESULTS
printf (' Heat required= %.1f cal',H)
printf (' \n value of dH= %.1f cal',H1)
