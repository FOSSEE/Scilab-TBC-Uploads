
clc
//initialisation of variables
g= 32.2 //ft/sec^2
Q= 12 //cuses
//CALCULATIONS
hc= (Q/(3*sqrt(g)))^(2/3)
Hc=poly(0,"Hc")
vec=roots(Hc^6+6*Hc^5+12*Hc^4+8*Hc^3-8.95*Hc-8.95)
H=vec(3)
//RESULTS
printf ('Critical depth = %.2f ft',hc) 
printf ('\n Critical depth = %.2f ft',H) 
