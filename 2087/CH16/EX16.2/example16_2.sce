

//example 16.2
//design a trapezoidal concrete lined channel
clc;funcprot(0);
//given
Q=100;               //discharge
S=25/100000;           //bed slope
N=0.016;             //rogsity coefficient
s=1.5;               //side slope
r=8;                 //b/d ratio

//using manning equation V=(R^2/3*S^1/2)/N;
//Perimeter=A/R 
//V=Q/A and on simplification we get
d=((101/10.09)*(12.18/10.09)^(2/3))^(3/8);
b=r*d;
b=round(b);
d=round(d*100)/100;
mprintf("required bed width=%f m.",b);
mprintf("\nrequired bed depth=%f m",d);

