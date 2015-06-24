

//exapple 1.10 
clc; funcprot(0);
// Initialization of Variable
rho=1000;
mu=1.42/1000;
g=9.81;
pi=3.14;
l=485;
h=4.5
e=8.2/100000;
Q=1500*4.545/1000/3600;
disp("assume d as 6cm");
d=0.06;
u=4*Q/pi/d^2;
Re=rho*d*u/mu;
rr=e/d;//relative roughness
//using moody's chart
phi=0.0033//friction coeff.
d=(64*phi*l*Q^2/pi^2/g/h)^0.2;
disp(d*100, "The calculated d after (1st iteration which is close to what we assume so we do not do any more iteration) in(cm) ")
