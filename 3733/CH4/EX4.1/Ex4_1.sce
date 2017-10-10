//Example 4_1
clc;funcprot(0);
//Given data
p=25;// kW
n=480;// rpm
h=5;// m
// d_r=D/d
d_r=10;
H=40;// m

//Calculation
N=n*(1/d_r)*(sqrt(H/h));// rpm
P=p*(d_r)^2*(H/h)^(3/2);// kW
n_s=(n*sqrt(p))/h^(5/4);
N_s=(N*sqrt(P))/(H)^(5/4);
printf('\n N=%0.0f r.p.m\nP=%0.0f kW\nN_s=%0.0f',N,P,N_s);
printf('\nThe runner is of propeller type');
// The answer vary due to round off error
