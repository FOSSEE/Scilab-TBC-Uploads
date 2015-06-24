clear;
clc;

//page no. 502

b = 50;//ft
c = 7;//ft
CL = 0.6;//lift coefficient
CD = 0.05;//drag coefficient
alpha = 7;//degrees
V = 150/0.681818;//coverting mph to fps
H = 10000;//ft
rho = 0.001756;//slug/cuft

D = CD*b*c*rho*0.5*V^2;
hp = D*V/550;
L = CL*b*c*rho*0.5*V^2;
mu = 3.534*10^-7;//lb-sec/sqft
R = V*c*rho/mu;
a = sqrt(1.4*33.2*53.3*(23.4+459.6));
M = V/a;

printf('hp = %d hp,\n L = %.2f lb,\n R = %d,\n M = %.3f',hp,L,R,M);

//there are small errors in the answer given in textbook
