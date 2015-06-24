clear;
clc;

d=2e-2;
l=3;
rho=60;
D=3;

R=(rho/(2 * %pi * l)) * log (4* l / d);
r= rho / (2 * %pi * R);

//(a)
a=r/D;
R2p=((1+a)/2)*R;
mprintf("\n(a) Resistance of 2 rods in parallel = %.3f ohm", R2p)

//(b)

R3p=((2+a-(4*a*a))/(6-(7*a)))*R;
mprintf("\n(b) Resistance of 3 rods in parallel = %.2f ohm", R3p)

//(c)
R3t=((1+a+a)/3)*R;
mprintf("\n(c) Resistance of 3 rods in equilateral triangle = %.1f ohm", R3t)

//(d)
R4s=((1+(2.707*a))/4)*R;
mprintf("\n(d) Resistance of 4 rods in square = %.2f ohm", R4s)

