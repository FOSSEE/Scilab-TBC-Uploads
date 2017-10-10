// Example 10.7
// Calculation of the variance of (a) linear phase noise, (b) nonlinear phase noise at the receiver
// Page no 477

clc;
clear;
close;

//Given data

alpha=0.0461;                // Loss coeffient
na=20;                      // No of amplifiers
L=80;                       // Amplifier spacing
tb=25*10^-12;               // Pulse width
P=2*10^-3;                  // Peak power
c=3*10^8;                   // Velocity of light
lambda=1550*10^-9;
n=1.5;                      // Spontaneous emission factor
h=6.626*10^-34;             // Planck constant
r0=1.1*10^-3;               // Nonlinear coefficient

// a) linear phase noise at the receiver
G=exp(alpha*L);
f=c/lambda;
R=h*f*(G-1)*n;
E=P*tb;
rl=(na*R)/(2*E);
rl=rl*10^3;

// (b) nonlinear phase noise at the receiver
Le=(1-exp(-alpha*L))/alpha;
rnl=((na-1)*na*(2*na-1)*R*E*r0^2*Le^2)/(3*tb^2);
rnl=rnl*10^9;

t=rl+rnl;

//Displaying results in the command window            
printf("\n The linear phase noise at the receiver = %0.2f rad^2 ",rl);
printf("\n The nonlinear phase noise at the receiver = %0.2f rad^2 ",rnl);
printf("\n The total variance = %0.2f X 10^-3 rad^2 ",t);


