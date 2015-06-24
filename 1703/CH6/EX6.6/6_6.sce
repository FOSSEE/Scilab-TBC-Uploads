
clc
//initialisation of variables
g= 32.2 //ft/sec^2
v= 4 //ft/sec
K= 300000 //lb/in^2
d= 6 //in
t= 0.25 //in
E= 30*10^6 //lb/in^2
w= 62.4 //lb/ft^3
//CALCULATIONS
P= sqrt((w*v^2/g)/((d/(E*144*t))+(1/(K*144))))/144
Sm= P*d/(2*t)
//RESULTS
printf ('Hoop stress = %.f lb/in^2',Sm)
