clc
//initialisation of variables
fs= 3
W= 50 //kips
l= 20 //ft
E= 30*10^6 //psi
//CALCULATIONS
Pcr= fs*W
I= Pcr*10^3*(l*12)^2/(%pi^2*E)
r= 2.01
lbyr= l/r
//RESULTS
printf ('Required I = %.2f in^4',I)
printf (' \n slenderness ratio=%.2f ',lbyr)
