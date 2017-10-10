// Example 2.1 
// Compuatation of the transmission distance
//
// Page no. 325

clc;
clear;
close;

//Given data

fl=0.2                  // Fiber loss
L=100;                  // Amplifeir spacing
n=1.4;
h=6.63*10^-34;          // Planck constant
c=3*10^8;               // Velocity of light
lambda=1.55*10^-6;

q=1.6*10^-19;          // Electron charge
R=0.9;
d=0.1*10^-9;
alpha=0.0461;
L=100;                // Spacing
Pi=-3;                // Mean fiber launch power
//N=80;               // Identical amplifers
fe=7*10^9;            //  Electrical filter bandwidth
q=6;
B=5*10^9;


// The transmission distance
l=fl*L;
G=10^(l/10);
f=c/lambda;
// r=N*n*h*f*(G-1);
Pi=10^(-(2/10));
N=Pi/(q^2*n*h*f*(G-1)*B);
Td=N*L;
Td=Td*10^-3;

//Displaying the result in command window
printf("\n The transmission distance is = %0.0f km",Td);





