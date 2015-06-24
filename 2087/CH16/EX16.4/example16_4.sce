

//example 16.4
//design a concrete lined channel of trapezoidal section
clc;funcprot(0);
//given
Q=250;             //discharge
S=1/6000;          //bed slope
s=1.5;             //side slope
d=3;               //limiting depth
N=0.015;           //rogosity coefficient

//using Perimeter=A/R;
//perimeter of trapezium=b+2d(theta+cot(theta));
//area of trapezium=bd+d^2(theta+cot(theta));
//Q=A*V; and on simplification
//we get
//(3b+18.81)^5/3/(b+12.54)^2/3=290.47;
//solving it by trial and error method we get
b=44.6;
mprintf("required bed width=%f m.",b);
mprintf("\nrequired bed depth=%i m",d);

 
