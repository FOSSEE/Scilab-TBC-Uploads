

//example 16.3
//design a concrete lined channel
clc;funcprot(0);
//given
Q=45;              //discharge
S=1/10000;         //bed slope
s=5/4;             //side slope
N=0.018;           //rogosity coefficient(manning N)

//channel is assumed to be of triangular section
theta=acot(s);
//using manning equation V=(R^2/3*S^1/2)/N;
//V=Q/A; 
//perimeter of trapezium=b+2d(theta+cot(theta));
//area of trapezium=bd+d^2(theta+cot(theta));
//we get
d=(Q*2.86/1.925)^(3/8);
d=round(d*100)/100;
mprintf("\nrequired depth of triangular channel=%f m",d);
