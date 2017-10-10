// Example no 5.5
// To calculate mean excess delay, rms delay spread and maximum excess delay 
// Page no. 202

clc;
clear all;

// Given data
t10dB=5*10^-6;                                                         // By definition of maximum excess delay (10dB)
t1=0;                                                                  // Excess delay of first signal in seconds
a1=-20;                                                                // Power level of first signal in dB
t2=1*10^-6;                                                            // Excess delay of second signal in seconds
a2=-10;                                                                // Power level of second signal in dB
t3=2*10^-6;                                                            // Excess delay of third signal in seconds
a3=-10;                                                                // Power level of third signal in dB
t4=5*10^-6;                                                            // Excess delay of fourth signal in seconds
a4=0;                                                                  // Power level of fourth signal in dB
a1=10^(a1/10);                                                         // Power level of first signal in Watt
a2=10^(a2/10);                                                         // Power level of second signal in Watt
a3=10^(a3/10);                                                         // Power level of third signal in Watt
a4=10^(a4/10);                                                         // Power level of fourth signal in Watt

// Mean excess delay
t=((a1*t1+a2*t2+a3*t3+a4*t4)/(a1+a2+a3+a4));                          // Mean excess delay in seconds
tsquare=((a1*t1^2+a2*t2^2+a3*t3^2+a4*t4^2)/(a1+a2+a3+a4));            // Mean square excess delay

// RMS delay spread
sigmat=sqrt(tsquare-t^2);                                            // RMS delay spread

// Coherence bandwidth
Bc=1/(5*sigmat);                                                     // 50% Coherence bandwidth
// The answer is varrying due to round-off error

// Displaying the result in command window
printf('\n The maximum excess delay (10 dB) = %0.0f microsecond',t10dB*10^6);
printf('\n The mean excess delay = %0.2f microsecond',t*10^6);
printf('\n The RMS delay spread = %0.2f microsecond',sigmat*10^6);
printf('\n The coherence bandwidth = %0.0f KHz',Bc*10^-3);
printf('\n Since coherence bandwidth is greater than 30 KHz, AMPS will work without an equalizer. However, GSM requires 200 KHz bandwidth which exceeds coherence bandwidth,\n thus an equalizer would be needed for this channel');
