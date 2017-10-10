// SAMPLE PROBLEM 8/4
clc;funcprot(0);
// Given data 
m=50;// kg
n=4;// Number of springs
// x_B=0.002cos50t
b=0.002;// m
omega=50;// rad/s
k=7500;// The stiffness of the spring in N/m

// Calculation
omega_n=sqrt((n*k)/m);// The resonant frequency in rad/s
X=b/(1-(omega/omega_n)^2);// m
printf("\nThe amplitude of the steady-state motion of the instrument,X=%1.2e m (or) %0.3f mm",X,X*10^3);
