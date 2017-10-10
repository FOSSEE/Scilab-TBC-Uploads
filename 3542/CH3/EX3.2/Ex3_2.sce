// Example 3.2
// To find frequency reuse factor for path loss exponent (n) a)n=4 b)n=3
// Page No.72

clc;
clear;

// Given data
SIdB=15;                     // Signal to interference(dB)
io=6;                        // Number of cochannel cell

// For n=4
n1=4;                        // Path loss exponent
N1=7;                        // First consideration: frequency reuse factor N=7
DR1=sqrt(3*N1);              // Co-channel reuse ratio
si1=(1/io)*(DR1)^n1;         // Signal to interference
sidB1=10*log10(si1);         // Signal to interference(dB)

// For n=3
n2=3;                        // Path loss exmponent
si=(1/io)*(DR1)^n2;          // Signal to interference for first consideration: frequency reuse factor N=7
sidB=10*log10(si);           // Signal to interference(dB)

N2=12;                       // second consideration : frequency reuse factor N=12 since sidB<SIdB 
DR2=sqrt(3*N2);              // Co-channel reuse ratio
si2=(1/io)*(DR2)^n2;         // Signal to interference
sidB2=10*log10(si2);         // Signal to interference(dB)

// Displaying the result in command window
printf('\n Signal to noise ratio for n=4 with frequency reuse factor N=7 = %0.2f dB',sidB1);
printf('\n Signal to noise ratio for n=3 with frequency reuse factor N=7 = %0.2f dB',sidB);
printf('\n Signal to noise ratio for n=3 with frequency reuse factor N=12 = %0.2f dB',sidB2);
printf('\n Since SIR is for n=3 with frequency reuse factor N=7 greater than the minimum required, so N=12 is used.');
