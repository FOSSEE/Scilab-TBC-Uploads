clc
//initialisation of variables
clear
R= 1.987 //cal mole^-1 K^-1
T= 278.6 //K
dH= 30.2 //cal g^-1
m= 6.054 //gms
a= 0.1263 //degrees
//CALCULATIONS
l= R*T^2/(1000*dH)
m1= a/l
M2= m/m1
//RESULTS
printf ('molal depression constant = %.2f ',l)
printf ('\n molality = %.4f ',m1)
printf ('\n molecular weight of solute = %.f gms',M2)
