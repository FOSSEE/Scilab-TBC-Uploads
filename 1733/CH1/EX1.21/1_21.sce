//1.21
clc;
R=0.8;
L=10*10^-6;
C=50*10^-6;
t0=10^6*%pi/((1/(L*C))-(R^2/(4*L^2)))^0.5;
printf("Time of conduction of thyristor= %.2f us", t0)