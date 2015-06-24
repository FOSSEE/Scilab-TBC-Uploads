
clc
//initialisation of variables
A= 4 //in^2
g= 32.2 //ft/sec^2
c= 0.64
H= 10 //ft
Ha= 34 //ft
//CALCULATIONS
v= sqrt(H*2*g/(1+(1/c-1)^2))
D= (A/144)*v
vc= v/c
Hc= H+Ha-(vc^2/(2*g))
//RESULTS
printf (' Pessure at the vvena contracta = %.1f ft',Hc)
