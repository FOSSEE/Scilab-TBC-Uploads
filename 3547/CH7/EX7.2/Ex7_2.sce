// Example no. 7.2
// To calculate exact and approximate Q-factor if the signal is (a)OOK, (b) PSK
// Page no. 311

clc;
clear;

// Given data
lambda=1.55*10^(-6);                                               // Wavelength of given signal
meanPin=1;                                                         // Mean fiber launch power in dBm
alpha=0.2;                                                         // fiber loss in dB/km
l=240;                                                             // fiber length in km
neta=0.7;                                                          // quantum efficiency 
T = 290;                                                           // Tempearture in  K
RL=100;                                                            // Length resistance in Ω
PLOdBm = 10;                                                       // Power at local oscillator in dBm
Be = 7.5*10^9;                                                     // Efficient bandwidth of filter in Hz
c=3*10^8;                                                          // Speed of ligth in air in m/s
loss=alpha*l;                                                      // Total fiber loss
q=1.602*10^(-19);                                                  // Charge of electron
h=6.626*10^(-34);                                                  // Planck constant
kB=1.38*10^(-23);                                                  // Bolzman constant

f=c/lambda;                                                        // mean frequency
R=(neta*q)/(h*f);                                                  // Responsivity

//For OOK
Pin=10*log10(2)+meanPin;                                           // peak power in dBm
P1rdBm=Pin-loss;                                                   // received peak power in dBm
P1r=(10^(P1rdBm/10))*10^(-3);                                      // received peak power in W
PLO=(10^(PLOdBm/10))*10^(-3);                                      // Power at local oscillator in W
I1=2*R*sqrt(P1r*PLO);                                              // mean of bit 1
sigma1=2*q*Be*R*(P1r+PLO)+(4*kB*T*Be)/RL;                          // Square of variance of bit 1
I0=0;                                                              // mean of bit 0
sigma0=sigma1;                                                     // Square of variance of bit 0
Q1=(I1-I0)/(2*sqrt(sigma1));                                       // Exact Q-factor
Q2=sqrt((neta*P1r)/(2*h*f*Be));                                    // Approximate Q-factor

// Displaying the result in command window
printf('\n Exact Q-factor if the signal is OOK = %0.1f',Q1);
printf('\n Approximate Q-factor if the signal is OOK = %0.1f',Q2);

// For PSK
P1rdBm=meanPin-loss;                                               // received peak power in dBm
P1r=(10^(P1rdBm/10))*10^(-3);                                      // received peak power in W
I1=2*R*sqrt(P1r*PLO);                                              // mean of bit 1
sigma1=2*q*Be*R*(P1r+PLO)+(4*kB*T*Be)/RL;                          // Square of variance of bit 1
I0=-I1;                                                            // mean of bit 0
sigma0=sigma1;                                                     // Square of variance of bit 0
Q1=I1/sqrt(sigma1);                                                // Exact Q-factor
Q2=sqrt((2*neta*P1r)/(h*f*Be));                                    // Approximate Q-factor

// Displaying the result in command window
printf('\n Exact Q-factor if the signal is PSK = %0.2f',Q1);
printf('\n Approximate Q-factor if the signal is PSK = %0.2f',Q2);
