// SAMPLE PROBLEM 8/6
clc;funcprot(0);
// Given data
W=100;// The weight of the piston in lb
k=200;// The spring modulus in lb/in
c=85;// The damping coefficient in lb-sec/ft
a=80;// The top surface area in in^2
omega=30;// rad/s
g=32.2;// The acceleration due to gravity in ft/sec^2
p=0.625;// lb/in^2

// Calculation
omega_n=sqrt((k*12)/(W/g));// The natural frequency of the system in rad/sec
eta=c/(2*(W/g)*omega_n);// The damping ratio
F_0=p*a;// lb
X=(F_0/(k*12))/((1-(omega/omega_n)^2)^2+(2*eta*omega/omega_n)^2)^(1/2);// The steady-state amplitude in ft
phi=atan((2*eta*omega/omega_n)/(1-(omega/omega_n)^2));// The phase angle in rad
// x_p=Xsin(omega*t-phi);
F_trmax=X*sqrt((k*12)^2+(c^2*omega^2));// The maximum force transmitted to the base in lb
printf("\nThe steady-state displacement as a function of time,x_p=%0.5fsin(%2.0ft-(%1.3f))ft \nThe maximum force transmitted to the base,(F_tr)_max=%2.1f lb",X,omega,phi,F_trmax);
