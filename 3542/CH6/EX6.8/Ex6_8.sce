// Example no 6.8
// To find the first zero-crossing RF bandwidth of rectangular pulse and compare to raised cosine filter pulse
// Page no. 291

clc;
clear all;

// Given data
RectTs=41.06*10^-6;                                             // Symbol period of rectangular pulse
cosineTs=41.06*10^-6;                                           // Symbol period of cosine filter pulse
alpha=0.35;                                                     // Rolloff factor of cosine filter pulse

// To find the first zero-crossing RF bandwidth of rectangular pulse
B1=2/RectTs;                                                    // The first zero-crossing RF bandwidth of rectangular pulse

// The first zero-crossing RF bandwidth of cosine filter pulse
B2=(1/cosineTs)*(1+alpha);                                      // The first zero-crossing RF bandwidth of cosine filter pulse

// Displaying the result in command window
printf('\n The first zero-crossing RF bandwidth of rectangular pulse = %0.2f kHz',B1*10^-3);
printf('\n The first zero-crossing RF bandwidth of cosine filter pulse = %0.2f kHz',B2*10^-3);
