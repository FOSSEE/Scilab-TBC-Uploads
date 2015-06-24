clc
//initialisation of variables
Q= 100 //gpm
d= 1 //in
kv= 0.05 //N
//CALCULATIONS
v= Q*4/(3.12*%pi*d^2)
Nr= (12*v*d)/kv
//RESULTS
printf ('Reynolds number = %.f ',Nr+5)
