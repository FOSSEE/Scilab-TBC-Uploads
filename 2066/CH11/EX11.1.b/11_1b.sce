clc
clear
//Initialization of variables
rho=1.94 //slugs/ft^3
mu=2.34e-5 //lb-sec/ft^2
y=5 //ft
T=25 //ft
d=10 //ft
slope=3/2 
g=32.2 //ft/s^2
S=0.001
n=0.017
//calculations
A=y*d+ 2*0.5*y*(slope*y)
WP=d+ 2*sqrt(3^2 +2^2) /2 *y
R=A/WP
e=0.01 //ft
rr=2*R/e
f=0.019
C=(41.65 + 0.00281/S + 1.811/n)/(1+( 41.65 + 0.00281/S)*n/sqrt(R))
V=C*sqrt(R*S)
Q=V*A
//results
printf("Discharge using kutter ganguillet formula = %.1f ft^3/s",Q)
disp("The answer is a bit different due to rounding off error in textbook")
