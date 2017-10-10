//Example 4_4
clc;funcprot(0);
//Given data
P=40000;//kW
N=500;//r.p.m
H=240;// m
h=30;// m
SG=1.1;// Specific gravity of water
q=150;// litres/sec
q=q*SG;// kg/sec
n_m=0.88;// The over all efficiency

//Calculation
w=1000*9.81;// N
p=(q*w*h*n_m)/(1000*1000);// kW
//d_r=D/d;
d_r=sqrt(P/p)*(h/H)^0.75;
n=N*d_r*sqrt(h/H);// r.p.m
n_s=(n*sqrt(p))/h^(5/4);
N_s=(N*sqrt(P))/(H)^(5/4);
printf('\n(a)The design speed for a turbie,n=%0.0f r.p.m',n);
printf('\nThe runner is of Francis type');
// The answer provided in the textbook is wrong
