// exa 3.12 Pg 72

clc;clear;close;

// Given Data
sigma_w=60;// MPa
F=10;// kN
alfa=30;// degree

FH=F*sind(alfa);// kN
FV=F*cosd(alfa);// kN
t=poly(0,'t');// mm
A=t*t;// mm.sq.
sigma_d=FV*10**3/A
M=FV*10**3*120+FH*10**3*150;// N.mm
I=t*(2*t)**3/12;// mm^4
sigma_t=M*t/I;// N/mm.sq.
// Tensile stress at A=sigma_d+sigma_t=sigma_w ...eqn(1)
expr = sigma_d+sigma_t-sigma_w;// polynomial from above eqn.
t=roots(numer(expr));// roots of the polynomial
t=t(1);// mm // discarding -ve roots
printf('\n value of t = %.1f mm',t)
A=2*t**2;// mm.sq.
printf('\n Area of cross-section of Hanger, A = %.f mm.sq.',A)
// Note-Answer in the textbook is slighly wrong and cross section not calculated.
