clc
//initialisation of variables
L1= 18 //ft
L2= 9 //ft
I1= 12.1 //in^4
I2= 1.2 //in^4
E= 30*10^6 //psi
//CALCULATIONS
r1= 2.05
lbyr= L1*12/r1
r2= 0.65
lbyr2= L2*12/r2
Pcr1= %pi^2*E*I1/(L1*12)^2
Pcr2= %pi^2*E*I2/(L2*12)^2
P= Pcr1/2.5
P2= Pcr2/2.5
//RESULTS
printf ('Design load of 1= %.2f lb',P)
printf (' \n Design load of 2=%.2f lb',P2)
