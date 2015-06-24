
clc
//initialisation of variables
k= 0.97
dp= 3 //in
dt= 1 //in
g= 32.2 //ft/sec^2
h= 16.2 //in
//CALCULATIONS
a2= (%pi/4)*(dp/12)^2
a1= (%pi/4)*(dt/12)^2
Q= k*sqrt(2*g)*sqrt(h/12)*(a1*a2/(sqrt(a1^2-a2^2)))
hf= (h/12)*(1-k^2)
hl= 2*hf
ht= hf+hl
//RESULTS
printf (' total head lost in the meter due to friction = %.2f ft ',ht)
