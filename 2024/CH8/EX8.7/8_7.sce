clc
//Initialization of variables
v2=41.8 //ft^3/mol
v1=20.9 //ft^3/mol
b=0.685 //ft^3/mol
R=0.73 //atm ft^3 / R mol
a=924.2
T=1000 //R
//calculations
vr= log((v2-b)/(v1-b))
W= R*T*vr + a*(1/v2 - 1/v1)
//results
printf("Work done = %.1f atm ft^3/mol",W)
