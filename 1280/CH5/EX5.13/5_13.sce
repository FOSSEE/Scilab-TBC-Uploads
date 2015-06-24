clc
//initialisation of variables
Q= 500 //gpm
d= 2 //in
S= 0.91
kv= 0.25 //N
r= 0.0012
K= 3
f= 0.04
//CALCULATIONS
v= Q*4/(%pi*d^2*3.12)
Nr= (v*d*12)/kv
Rr= 12*r/d
Le= K*d/(f*12)
//RESULTS
printf ('equivalent length = %.1f ft',Le)
