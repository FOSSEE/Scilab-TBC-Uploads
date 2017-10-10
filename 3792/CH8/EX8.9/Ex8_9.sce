// SAMPLE PROBLEM 8/9
clc;funcprot(0);
// Given data
m=50;// The mass of the cylinder in kg
r=0.5;// The cylinder radius in m
k=75;// The spring constant in N/m
c=10;// The damping coefficient in N.s/m
x=-0.2;// m
t=0;// s 
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
omega_n=sqrt((2/3)*(k/m));// The undamped natural frequency in rad/s
eta=(1/3)*(c/(m*omega_n));// The damping ratio
omega_d=omega_n*(sqrt(1-eta^2));// The damped natural frequency in rad/s
tau_d=(2*%pi)/omega_d;// The period of the damped system in s 
function[X]=Candpsi(y)
    X(1)=(y(1)*sin(y(2)))-(-0.2);
    X(2)=((-0.0667*y(1)*sin(y(2)))+((0.998*y(1)*cos(y(2)))))-0;
endfunction
y=[0.1 1.1];
z=fsolve(y,Candpsi);
C=z(1);// m
psi=z(2);// rad
printf("\n(a)The undamped natural frequency,omega_n=%1.0f rad/s \n(b)The damping ratio,eta=%0.4f \n(c)The damped natural frequency,omega_d=%0.3f rad/s \n(d)The period of the damped system,tau=%1.2f s \nThus, the motion is given by x=%0.3fexp(-%0.4f*t)sin(%0.3ft+%1.3f)m",omega_n,eta,omega_d,tau_d,C,eta,omega_d,psi);
