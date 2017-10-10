// Example no 9.4
// To find a)the time duration of a bit b)the time duration of a slot c)the time duration of a frame d)how long must a user occupying single time slot wait between two successive transmission
// Page no. 456

clc;
clear all;

// Given data
N=8;                                                        // Number of time slots in each frame
Nb=156.25;                                                  // Number of in each time slot
DR=270.833*10^3;                                            // Data rate of transmission in channel

// a)To find the time duration of a bit 
Tb=1/DR;                                                   // The time duration of a bit in sec

// b)To find the time duration of a slot
Tslot=Nb*Tb;                                              // The time duration of a slot

// c)To find the time duration of a frame
Tf=N*Tslot;                                               // The time duration of a frame

//d) The waiting time between two successive transmission
Tw=Tf;                                                   // The arrival time of new frame for its next transmission

// Displaying the result in command window
printf('\n The time duration of a bit = %0.3f microseconds',Tb*10^6);
printf('\n The time duration of a slot = %0.3f ms',Tslot*10^3);
printf('\n The time duration of a frame = %0.3f ms',Tf*10^3);
printf('\n The arrival time of new frame for its next transmission = %0.3f ms',Tw*10^3);
