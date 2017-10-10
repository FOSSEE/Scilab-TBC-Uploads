// Example 3.1
// To compute the number of channels available per cell for a)four-cell reuse system a)seven-cell reuse system a)12-cell reuse system
// Page No.61

clc;
clear;

// Given data
B=33*10^6;                                                  // Total bandwidth allocated to particular FDD system in Hz
Bc=25*10^3;                                                 // Bandwidth per channel in Hz
Nc=2;                                                       // Number of simplex channels
Bc=Bc*Nc;                                                   // Channel bandwidth in Hz

Ntotal=B/Bc;                                                // Total number of channels

//a) To compute the number of channels available per cell for four-cell reuse system
N=4;                                                        // frequency reuse factor
chpercell=Ntotal/N;                                         // number of channels available per cell for four-cell reuse system

// Displaying the result in command window
printf('\n The number of channels available per cell for 4-cell reuse system = %0.0f channels',chpercell);
printf('\n One control channel and 160 voice channels would be assigned to each cell.');

// b) To compute the number of channels available per cell for seven-cell reuse system
N=7;                                                        // frequency reuse factor
chpercell=ceil(Ntotal/N);                                         // number of channels available per cell for seven-cell reuse system

// Answer is varrying due to round-off error

// Displaying the result in command window
printf('\n \n The number of channels available per cell for 7-cell reuse system = %0.0f channels',chpercell);
printf('\n Each cell would have one control channel, four cells would have 90 voice channels and three cells would have 91 voice channels.');

// c) To compute the number of channels available per cell for 12-cell reuse system
N=12;                                                        // frequency reuse factor
chpercell=Ntotal/N;                                          // number of channels available per cell for seven-cell reuse system

// Displaying the result in command window
printf('\n \n The number of channels available per cell for 12-cell reuse system = %0.0f channels',chpercell);
printf('\n Each cell would have one control channel, eight cells would have 53 voice channels and four cells would have 54 voice channels.');
