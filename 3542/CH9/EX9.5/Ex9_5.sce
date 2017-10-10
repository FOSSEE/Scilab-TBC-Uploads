// Example no 9.5
// To find the frame efficiency
// Page no. 456

clc;
clear all;

// Given data
Btrail=6;                                               // Number of trailing bits per slot
Bg=8.25;                                                // Number of guard bits per slot
Btrain=26;                                              // Number of training bits per slot
Nb=2;                                                   // Number of burst
Bburst=58;                                              // Number of bits in each burst
Nslot=8;                                                // Number of slots in each frame

N=Btrail+Bg+Btrain+2*Bburst;                            // Total number of bits in each slot
Nf=Nslot*N;                                             // Total number of bits in a frame
bOH=Nslot*Btrail+Nslot*Bg+Nslot*Btrain;                 // Number of overhead bits per frame

// To find the frame efficiency
nf=(1-(bOH/Nf))*100;                                   // Frame efficiency

// Displaying the result in command window
printf('\n The frame efficiency = %0.2f percentage',nf);
