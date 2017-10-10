//Example 4_2
clc;funcprot(0);
//Given data
p=4.1;// kW
n=360;// r.p.m
h=1.8;// m
H=6;// m
// d_r=D/d
d_r=5

//Calculation
N=n*(1/d_r)*sqrt(H/h);// r.p.m
P=p*(d_r)^2*(H/h)^(3/2);// kW
//Q/q=q_r
q_r=(d_r)^2*sqrt(H/h);
n_s=(n*sqrt(p))/h^(5/4);
N_s=(N*sqrt(P))/(H)^(5/4);
printf('\nN=%0.0f r.p.m\nP=%0.0f kW\nQ/q=%0.1f',N,P,q_r);
printf('\nThe runner must be of propeller type');
// The answer vary due to round off error
