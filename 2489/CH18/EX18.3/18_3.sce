clc
//Intitalisation of variables
clear
k1= 3.46*10^-5
k2= 4.87*10^-3
T1= 338 //K
T2= 298 //K
R= 1.987 //cal/mole K
//CALCULATIONS
E= log10(k2/k1)*2.303*R*T1*T2/(T1-T2)
//RESULTS
printf ('Energy of activation = %.f cal',E+43)
