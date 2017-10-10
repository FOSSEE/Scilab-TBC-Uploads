// Example 7.4 
// Compuatation of (a) OSNR in a reference bandwidth of 0.1 nm, (b) Q-factor.
// Page no. 321

clc;
clear;
close;

// Given data

f=10*10^9;
n=1.5;                                                   //Refractive index
h=6.63*10^-34;                                           // Planck constant
c=3*10^8;                                                // Velocity of light
lambda=1.55*10^-6;                                       //
q=1.6*10^-19;                                            // Electron charge
d=0.1*10^-9;                                             // Reference bandwidth
alpha=0.0461;                                            // Fiber loss coefficient
L=80;                                                    // Spacing
Pi=-3;                                                   // Mean fiber launch power
N=80;                                                    // Identical amplifers
fe=7*10^9;                                               // Electrical filter bandwidth


// Signal calculation
df=-((c*d)/lambda^2);                                    //Reference frequency
G=exp(alpha*L);
G1=10*log10(G);
N1=10*log10(N);
Fn=2*n;                                                  //Noise figure
Fn=10*log10(Fn);

O=Pi-N1-G1-Fn+58;                                       //OSNR
Pi1=2*10^(-(3/10));                                     // Peak power in mW
f=c/lambda;
Q=sqrt((Pi1*10^-3)/(4*N*n*h*f*(G-1)*fe));               //Q-factor

// Displaying the result in command window
printf("\n OSNR is = %0.2f dB",O);
printf("\n Q-factor is = %0.2f ",Q);

// The answer vary due to round off error


