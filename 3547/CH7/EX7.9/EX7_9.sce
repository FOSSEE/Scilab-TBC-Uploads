// Example 7.9 
// Compuatation of the (a) the length of the DCF (b) the gain G2 and (c) the Q-factor.
//
// Page no. 331

clc;
clear;
close;

//Given data
b=-21*10^-27;
L=100*10^3;
Lt=100;
l=0.18;               // Loss
l1=0.5;               // Dispersion coefficients of the TF
G1=16;                // Amplifier gain
p=-2;                 // Mean transmitter output power
fe=7*10^9;
c=3*10^8;             // Velocity of light
h=6.62*10^-34;       // Planck constant
fn1=5.5;             // Noise figure of amplifier 1
fn2=7.5;             // Noise figure of amplifier 2
lambda=1.55*10^-6;
bd=145*10^-27;      // Dispersion coefficients of the DCF

// (a) The length of the DCF
st=b*L;
sd=-0.9*st;
Ld=sd/bd;
Ld=Ld*10^-3;
// (b) Gain G2
Ht=l*Lt;
Hd=l1*Ld;
G2=Ht+Hd-G1;

// (c) Q factor
Ge=G1+G2+-Hd;
Ge=10^(Ge/10);
fn1=10^(fn1/10);
fn2=10^(fn2/10);
G1=10^(G1/10);
Hd=10^(-Hd/10);
Fe=fn1+(fn2/(G1*Hd))-(1/G1);
f=c/lambda;
r=70*h*f*(((Ge*Fe)-1)/2);
Pi=2*10^(p/10)*10^-3;
Q=sqrt(Pi/(4*r*fe));


//Displaying the result in command window
printf("\n The length of the DCF = %0.2f km",Ld);
printf("\n Gain G2 = %0.2f dB",G2);
printf("\n Q factor= %0.1f ",Q);

// The answer vary due to round off error


