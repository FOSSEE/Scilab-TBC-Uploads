// Example 9.1
// Calculation of the (a) the channel spacing, (b) the signal bandwidth in a channel and cther total bandwidth of the WDM signal, and (c) the total data rate.
// Page no 392

clc;
clear;
close;

//Given data
Bs=10*10^12;               // Symbol rate
n=6;                      // Spectral efficiency
Fs=10*10^12;              // Symbol rate
N=12;                    // No of channels



// (a) Channel spacing
B=Bs*log2(64);
f=B/n;

// (b) Total bandwidth of the WDM signal
T1=(N-1)*f+(2*Fs)/2; 
T1=T1*10^-12;
// (c) Total data rate
T2=N*B;
T2=T2*10^-12;

// Displaying results in the command window            
printf("\n Channel spacing = %0.0f GHz ",f*10^-12);

printf("\n Total bandwidth of the WDM signal = %0.0f GHz ",T1);
printf("\n Total data rate = %0.0f Gb/s ",T2);

