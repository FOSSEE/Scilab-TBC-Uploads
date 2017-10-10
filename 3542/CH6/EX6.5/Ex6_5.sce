// Example no 6.5
// To determine the analog bandwidth, output SNR improvement if modulation index is increased from 3 to 5 and tradeoff bandwidth for this improvement.
// Page no. 277

clc;
clear all;

// Given data
fm=5*10^3;                                        // Audio bandwidth of FM signal
betaf1=3;                                         // Initial modulation index
betaf2=5;                                         // Final modulation index

// To determine analog bandwidth
BT1=2*(betaf1+1)*fm;                               // The analog bandwidth
BT2=2*(betaf2+1)*fm;                               // The analog bandwidth

// To determine output SNR improvement factor
SNR1=3*betaf1^3+3*betaf1^2;                      // Output SNR factor for modulation index=3
SNR1=10*log10(SNR1);                             // Output SNR factor for modulation index=3 in dB
SNR2=3*betaf2^3+3*betaf2^2;                       // Output SNR factor for modulation index=3
SNR2=10*log10(SNR2);                             // Output SNR factor for modulation index=3 in dB

// To determine improvement in output SNR by increasing modulation index
improvedSNR=SNR2-SNR1;                           // Improvement in output SNR by increasing modulation index

// Displaying the result in command window
printf('\n Using Carson rule, the analog bandwidth at 3 modulation index occupied by FM signal = %0.0f KHz',BT1*10^-3);
printf('\n Using Carson rule, the analog bandwidth at 5 modulation index occupied by FM signal = %0.0f KHz',BT2*10^-3);
printf('\n Improvement in output SNR by increasing modulation index = %0.1f dB',improvedSNR);
printf('\n \n This improvement is achieved at the expenses of bandwidth. For modulation index = 3, a bandwidth of 40kHz is needed,\n while for modulation index = 5 requires bandwidth = 60kHz.');
