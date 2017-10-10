// Example 3.6
// To find a)Number of cells in given area b)Number of channels/cell c)Traffic intensity per cell d)Maximum carried traffic e)Total number of users for 2% GOS f) Number of mobiles per unique channel   g)Maximum number of users could be served at one time
// Page No.84

clc;
clear;

// Given data
Area=1300;                          // Total coverage area in m^2
R=4;                                // Radius of cell in m
N=7;                                // Frequecy reuse factor
S=40*10^6;                          // Allocated spectrum in Hz
Ch=60*10^3;                         // Channel width in Hz

// a)Number of cells
CA=2.5981*R^2;                      // Area of hexagonal cell in m^2
Nc=round(Area/CA);                  // Number of cells

// Displaying the result in command window
printf('\n Number of cells in given system = %0.0f cells',Nc);

// b)Number of channels/cell
C1=round(S/(Ch*N));                  // Number of channels

// Displaying the result in command window
printf('\n \n Number of channels per cell in given system = %0.0f channels/cell',C1);

// c) Traffic intensity per cell
C1=95;                               // Number of channels from b)
GOS=0.02;                            // Grade of service
A=84;                                // Traffic intensity from Erlang B chart

// Displaying the result in command window
printf('\n \n Traffic intensity in given system = %0.0f Erlangs/cell',A);

// d)Maximum carried traffic
traffic=Nc*A;                       // Maximum carried traffic

// Displaying the result in command window
printf('\n \n Maximum carried traffic in given system = %0.0f Erlangs',traffic);

// e)Total number of users for 2% GOS 
trafficperuser=0.03;                 // Given traffic per user
U=traffic/trafficperuser;            // Total number of users

// Displaying the result in command window
printf('\n \n Total number of users = %0.0f users',U);

// f) Number of mobiles per unique channel
C=666;                               // Number of channels
mobilesperchannel=round(U/C);        // Number of mobiles per unique channel

// Displaying the result in command window
printf('\n \n Number of mobiles per unique channel = %0.0f mobiles/channel',mobilesperchannel);

// g)Maximum number of users could be served at one time
printf('\n \n Theoretically maximum number of served mobiles is the number of available channels in the system.')
C=C1*Nc;                              // Maximum number of users could be served at one time

// Displaying the result in command window
printf('\n Theoretical Maximum number of users could be served at one time = %0.0f users',C);
disp('It is 3.4% of customer base.');
