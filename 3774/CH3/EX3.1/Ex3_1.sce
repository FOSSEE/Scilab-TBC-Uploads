// exa 3.1 Pg 62

clc;clear;close;

// Given Data
P=30;// kN
Sut=350;// MPa
n=2.5;// factor of safety

sigma_w=Sut/n;// MPa (Working stress for the link)

t=poly(0,'t');// thickness of link
A=2.5*t**2;// mm.sq. 
I=t*(2.5*t)**3/12;// mm^4 (Moment of Inertia about N-A)
sigma_d=P/A;// N/mm.sq.
e=10+1.25*t;//mm
M=P*10**3*e;// N.mm
sigma_t=M*1.25*t/I;// N/mm.sq.
//maximum tensile stress at the top fibres = sigma_d+sigma_t=sigma_w  ...eqn(1)
expr=sigma_d+sigma_t-sigma_w ;// expression of polynomial from above eqn.
t=roots(numer(expr));// solving the equation (as denominator will me be multiplied by zero on R.H.S)
t=t(1);// mm // discarding -ve roots
printf('dimension of cross section of link, t=%.f mm. Adopt t=21 mm. ',t)
