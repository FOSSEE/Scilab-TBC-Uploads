// Example 7.7 
// Compuatation of the optimum amplifier configuration
//
// Page no. 329

clc;
clear;
close;

//Given data

G1=8;           // Amplifier gain 1
G2=16;          // Amplifier gain 2
fn1=7;          // Noise figure of amplifier 1
fn2=5.5;        // Noise figure of amplifier 2
H=7;            // Insertion loss of the DCF
//N=80;         // Identical amplifers
fe=7*10^9;      //  Electrical filter bandwidth
// q=6;


// The optimum amplifier configuration

fn1=10^(fn1/10);
fn2=10^(fn2/10);
G2=10^(G2/10);
H=10^(H/10);
Fna=fn2+(fn1/(G2*H));
Fna=10*log10(Fna);
G=G2+G1+H;
Fnb=fn1+(fn2/(G1*H));

Fnb=10*log10(Fnb);

//Displaying the result in command window
printf("\n The optimum amplifier configuration by choosing Amp2 as the first amplifier = %0.3f dB",Fna);
printf("\n The optimum amplifier configuration by choosing Amp1 as the first amplifier = %0.3f dB",Fnb);

// The answer vary due to round off error


