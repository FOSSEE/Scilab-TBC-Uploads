clc
//initialisation of variables
ti= 149 //C
t0= 27 //C
D0= 0.1149 //m
l= 1 //m
h0= 23 //W/m^2 C
hi= 227 //W/m^2 C
k= 0.19 //W/m C
Di= 0.0889 //cm
//CALCULATIONS
D1= D0*100
D2= Di*100
R0=(1/(D0*%pi*l*h0))
Rins=(log(D1/D2)/(2*%pi*k*l))
Ri=1/(Di*%pi*l*hi)
q= (ti-t0)/(R0+Rins+Ri)
//RESULTS
printf ('Heat loss= %.f W',q)
