clc
//initialisation of variables
F= 20//lb
L1= 6 //in
L2= 12 //in
L3= 24 //in
mus= 0.60
//CALCULATIONS
A=[(1),(-exp(mus*%pi));(L1+L2),(L1)]
b=[0;F*(L1+L2+L3)]
c= A\b
TL= c(1,1)
Ts= c(2,1)
//RESULTS
printf ('TL= %.2f lb',TL)
printf (' \n Ts=%.2f lb',Ts)
