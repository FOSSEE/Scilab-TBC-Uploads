// Example no 8.4
// To find the upper bound of the transmission bit rate
// Page no. 439

clc;
clear all;

// Given data
FL=810*10^6;                                                 // Lower limit of forward channel frequency band
FU=826*10^6;                                                 // Upper limit of forward channel frequency band
N=1150;                                                      // Number of simultaneous users;
SE=1.68;                                                     // Spectral efficiency in bps/Hz
CR=0.5;                                                      // Coder rate
bandused=90/100;                                             // 90% bandwidth is used

bandwidth=bandused*(FU-FL);                                  // Total bandwidth available for traffic channels in Hz
Cbandwidth=bandwidth/N;                                      // Maximum channel bandwidth in Hz
ChannelDR=SE*Cbandwidth;                                     // Maximum channel data rate in bps
DR=ChannelDR*CR;                                             // Maximum net data rate in bps

// Displaying the result in command window
printf('\n Maximum net data rate = %0.1f kbps',DR*10^-3);
