// exa 3.3 Pg 64

clc;clear;close;

// Given Data
P=20;// kN
Sut=300;// MPa
n=3;// factor of safety

sigma_w=Sut/n;// MPa (Working stress for the link)

t=poly(0,'t');// thickness of link
A=4*t*t;// mm.sq. 
sigma_d=P*10**3/A;// N/mm.sq.
e=6*t;//mm
M=P*10**3*e;// N.mm
z=t*(4*t)**2/6;// mm^3 (section modulus at x1-x2)
sigma_b=M/z;// N/mm.sq.
//maximum tensile stress at x1 = sigma_d+sigma_b=sigma_w  ...eqn(1)
expr=sigma_d+sigma_b-sigma_w ;// expression of polynomial from above eqn.
t=roots(numer(expr));// solving the equation (as denominator will me be multiplied by zero on R.H.S)
t=t(2);// mm // discarding -ve roots
printf('dimension of cross section of link, t=%.2f mm. Use 23 mm.',t)
