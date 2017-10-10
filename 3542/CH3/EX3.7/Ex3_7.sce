// Example 3.7
// To find a)number of users per square km b)probability that delayed call have to wait longer than t=10sec c)probability that call is delayed more than 10 sec
// Page 85

clc;
clear;

// Given data
R=1.387;                                  // Radius of cell in m
Area=2.598*R^2;                           // Area of hexagonal cell in m^2
cellpercluster=4;                         // Number of cells/cluster
channels=60;                              // Number of channels

channelspercell=channels/cellpercluster;  // Number of channels per cell

// a)To find number of users per square km
A=0.029;                                  // Traffic intensity per user
delayprob=0.05;                           // Grade of service
traffic=9;                                // Traffic intensity from Erlang chart C
U1=traffic/A;                             // Total number of users in 5sq.km.
U=round(U1/Area);                         // Number of users per square km

// Displaying the result in command window
printf('\n Number of users per square km in given system = %0.0f users/sq km',U);

// b)To find the probability that delayed call have to wait longer than t=10sec
lambda=1;                                 // Holding time
H1=A/lambda;                              // Duration of call
H=H1*3600;                                // Duration of call in second
t=10;
Pr=exp(-(channelspercell-traffic)*t/H)*100;         // probability that delayed call have to wait longer than t=10sec.

// Displaying the result in command window
printf('\n \n Percentage of probability that delayed call have to wait longer than t=10 sec = %0.2f percent',Pr);

// c)To find the probability that call is delayed more than 10 sec
Pr10=delayprob*Pr;                        // probability that call is delayed more than 10 sec

// Displaying the result in command window
printf('\n \n Percentage of probability that call is delayed more than 10 sec = %0.2f percent',Pr10);
