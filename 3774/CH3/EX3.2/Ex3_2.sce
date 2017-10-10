// exa 3.2 Pg 63

clc;clear;close;

// Given Data
P=6;// kN
alfa=30;// degree
Sut=250;// MPa
n=2.5;// factor of safety

sigma_w=Sut/n;// MPa (Working stress for the link)
PH=P*10**3*cosd(alfa);// kN
PV=P*10**3*sind(alfa);// kN

t=poly(0,'t');// thickness of link
A=2*t*t;// mm.sq. 
sigma_d=PH/A;// N/mm.sq.
M=PH*100+PV*250;// N.mm
I=t*(2*t)**3/12;// mm^4 (Moment of Inertia)
sigma_t=M*t/I;// N/mm.sq.
//maximum tensile stress at the top fibres = sigma_d+sigma_t=sigma_w  ...eqn(1)
expr=sigma_d+sigma_t-sigma_w ;// expression of polynomial from above eqn.
t=roots(numer(expr));// solving the equation (as denominator will me be multiplied by zero on R.H.S)
t=t(1);// mm // discarding -ve roots
printf('dimension of cross section of link, t=%.f mm.',t)
