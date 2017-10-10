// Example 7.6 
// Compuatation of the Q-factor.
//
// Page no. 327

clc;
clear;
close;

//Given data
alpha=0.18;          // Fiber loss coefficient
L=190;              // Fiber length
G=20;               // Gain of preamplifier
lambda=1.55*10^-6; // Operating wavelength
h=6.63*10^-34;     // Planck constant
n=1.409;    
G1=10^(G/10);  
f0=20*10^9; 
R=1.1;   
q=1.6*10^-19;
fe=7.5*10^9;
Pi=1;              // Input power
c=3*10^8;          // Velocity of light
k=1.38*10^-23;
T=298;
Rl=200;

// The Q factor
l=alpha*L;
Po=Pi-l+G;
Po=10^(Po/10)*10^-3;
f=c/lambda;
r=h*f*(G1-1)*n;
fn=2*n;
fn=10^(fn/10);
I1=R*Po+2*r*f0;
I0=2*R*r*f0;
o1=(2*q*I1*fe)+((4*k*T*fe)/Rl)+(2*R^2*r*(2*Po*fe+r*(2*f0-fe)*fe));
o2=(2*q*I0*fe)+((4*k*T*fe)/Rl)+(2*R^2*r^2*(2*f0-fe)*fe);
Q=(I1-I0)/(sqrt(o1)+sqrt(o2));

//Displaying the result in command window

printf("\n Q factor= %0.3f ",Q);

// The answer vary due to round off error


