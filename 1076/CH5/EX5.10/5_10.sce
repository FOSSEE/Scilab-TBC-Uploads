clear;
clc;

ar=.484;
d=.889e-2;
m=428e-3;
g=9.81;
T=1973 *g;
sfac=2;
w=m*g;
l=200;
T=T/sfac;

//(a)
S=w* l*l/(8*T);
mprintf("\n (a)maximum sag due to copper weight = %.3f m",S);

//(b)
t=1e-2;
D=d+(2*t);
wi=8920 * (D^2 - d^2) * %pi /4;

F=w+wi;
S=F* l*l/(8*T);
mprintf("\n (b)maximum sag due to addition weight of ice = %.1f m",S);


