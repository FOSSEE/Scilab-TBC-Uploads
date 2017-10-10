//Example 4_5
clc;funcprot(0);
//Given data
P=50000;// kW
H=225;// m
N=600;// r.p.m
h=36;// m
q=170;// litres/sec
n_p=0.9;// Over all efficency
n_m=n_p;

//Calculation
w=1000*9.81;// N
Q=(P*1000)/(w*H*n_m);// m^3/s
// D_r= d/D
D_r=sqrt(sqrt(h/H)*((Q/q)));
D=1/D_r;
p=P*(D_r^2*(h/H)^(3/2));// kW
n=N*((1/D_r)*(sqrt(h/H)));// r.p.m
printf('\n(a)The model size is (1/%0.2f)^th of prototype. \n(b)Power developed by the model=%0.1f kW \n(c)Model runner speed=%0.0f r.p.m',D,p,n);
// The answer provided in the textbook is wrong
