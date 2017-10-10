// Example no 7.4
// To determine probability that the SNR will drop below threshold SNR
// Page no. 383

clc;
clear all;

// Given data
M1=4;                                     // Number of branch diversity
M2=1;                                     // Number of branch diversity
gamm=10;                                  // Specified SNR threshold in dB
gamm=10^(gamm/10);                        // Specified SNR threshold
Gamma=20;                                 // Average SNR in dB
Gamma=10^(Gamma/10);                      // Average SNR

// Probability that the SNR will drop below 10dB when 4 branch diversity is used
P4=(1-exp(-gamm/Gamma))^M1;              // Probability that the SNR will drop below 10dB

// Probability that the SNR will drop below 10dB when single branch diversity is used
P1=(1-exp(-gamm/Gamma))^M2;              // Probability that the SNR will drop below 10dB

// Displaying the result in command window
printf('\n Probability that the SNR will drop below 10dB when 4 branch diversity is used = %0.6f',P4);
printf('\n Probability that the SNR will drop below 10dB when single branch diversity is used = %0.3f',P1);
printf('\n \n From above results, it is observed that without diversity the SNR drops below the specified threshold with a probability that is three orders of magnitude greater \n than if four branch diversity is used.')
