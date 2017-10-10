//Example 4_3
clc;funcprot(0);
//Given data
P=10000;// kW
H=12;// m
N=100;// r.p.m
// d_r=D/d;
d_r=10;
h=8;// m
n_m=0.8;

//Calculation
n=N*d_r*sqrt(h/H);// r.p.m
p=P/((d_r^2*(H/h)^(3/2)));// kW
w=1000*9.81;// N
q=(p*1000)/(w*h*n_m);// m^3/sec
n_s=(n*sqrt(p))/h^(5/4);
N_s=(N*sqrt(P))/(H)^(5/4);
printf('\n(a)The running speed of the model,n=%0.0f r.p.m \n(b)B.P,p=%0.1f kW \n   The flow quantity required,q=%0.2f m^3/sec \n   The specific speed of the runner,N_s=%0.0f',n,p,q,N_s );
// The answer vary due to round off error
