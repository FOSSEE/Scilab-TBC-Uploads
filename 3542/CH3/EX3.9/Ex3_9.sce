// Example 3.9
// To analyze trunking efficiency capacity of sectoring and unsectoring
// Page 92

clc;
clear all;

// Given data
H=2/60;                                                       // Average call duration in hour
GOS=0.01;                                                     // Probability of blocking

// Unsectored system
C1=57;                                                         // Number of traffic channels per cell in unsectored system
A=44.2;                                                        // Carried traffic in unsectored system
calls1=1326;                                                   // Number of calls per hour in unsectored system from Erlangs B table

// 120 degree sectored system
C2=C1/3;                                                      // Number of traffic channels per antenna sector in 120 degree sectored system
calls2=336;                                                   // Number of calls per hour in 120 degree sectored system from Erlangs B table
Ns1=3;                                                        // Number of sectors
capacity=Ns1*calls2;                                          // Cell capacity or number of calls handled by system per hour

dif=calls1-capacity;                                          // decrease in cell capacity in 120 degree sectored system
percentdif=(dif/calls1)*100;                                  // decrease in cell capacity in 120 degree sectored system in percentage

// Displaying the result in command window
printf('\n Cell capacity of unsectored system = %0.0f calls/hour',calls1);
printf('\n \n Cell capacity of 120 degree sectored system = %0.0f calls/hour',capacity);
printf('\n \n Decrease in cell capacity in 120 degree sectored system = %0.0f percent',percentdif);
