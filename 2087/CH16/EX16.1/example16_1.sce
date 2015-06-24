

//example 16.1
//design a trapezoidal concrete lined channel
clc;funcprot(0);
//given
Q=100;               //discharge
S=25/100000;           //bed slope
N=0.016;             //rogsity coefficient
s=1.5;               //side slope
V=1.5;               //limiting velocity

//using manning's equation  V=(R^2/3*S^1/2)/N;
R=(V*N/(S^0.5))^(1.5);      //hydraulic mean depth

//for s=1.5;
theta=acot(1.5);
A=Q/V;
P=A/R;
//using equation of area and perimeter of trapezium
//perimeter of trapezium=b+2d(theta+cot(theta));
//area of trapezium=bd+d^2(theta+cot(theta));
//we get
y=poly([31.9,-17.1,1],'x','c');
d=roots(y);
//we get D=14.968917 and 2.1310826.
//taking
d=2.1310826;
b=P-4.18*d;
b=round(b*100)/100;
d=round(d*100)/100;
mprintf("required bed width=%f m.",b);
mprintf("\nrequired bed depth=%f m",d);
