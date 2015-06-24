// Example 8.4
clear all;
clc;

// Given data
P0 = 825;                                     // Reactor thermal power in MW
t0 = 1.5*3.16*10^7;                           // Reactor operation time in seconds
ts = 0.1;                                     // Reactor shutdown time in seconds

// 1.
// Let P/P0 = q
// From Figure 8.3
q_ts = 0.07;                                  // Fission product to decay power during shutdown time
q_t0 = 0.0007;                                // Fission product to decay power after operating time
q = q_ts-q_t0;                                // Net fission product to decay power
// Calculation
P = q*P0;
// Result
printf(" \n Decay energy at shutdown = %2.1f MW",P);

// One hour after shutdown 
ts1 = 3.6*10^3;                                // Reactor shutdown time in seconds
// Let P/P0=q
// From Figure 8.3
q_ts1 = 0.014;                                 // Fission product to decay power at shutdown time
q_t0 = 0.0007;                                // Fission product to decay power after operating time
q1 = q_ts1-q_t0;
// Calculation
P1 = q1*P0;
// Result
printf(" \n Decay energy one hour after shutdown = %2.1f MW",P1);

// One year after shutdown
ts2 = 3.16*10^7;                               // Reactor shutdown time in seconds
// Let P/P0=q
// From Figure 8.3
q_ts2 = 0.00079;                               // Fission product to decay power at shutdown time
// Now the operating time is t0+ts2 which can be denoted by t01
q_t01 = 0.00063;                               // Fission product to decay power after operating time
q2 = q_ts2-q_t01;
// Calculation 
P2 = q2*P0;
// Result
printf(" \n Decay energy one year after shutdown = %.3f MW \n",P2);

// 2.
C = 0.88;                                     // Conversion factor 
// Using data from Table II.2
sigma_a25 = 681;                              // Microscopic absorption cross section in barns
sigma_f25 = 582;                              // Microscopic fission cross section in barns
// At shutdown time
P_29 = (2.28*10^(-3)*C*(sigma_a25/sigma_f25))*P0;
P_39 = (2.17*10^(-3)*C*(sigma_a25/sigma_f25))*P0;
printf(" \n Decay energy at shutdown with effect of Uranium-239 and Neptunium-239 decay = %2.2f MW and %2.2f MW respectively",P_29,P_39);

// One hour after shutdown 
ts1 = 3600;                                   // TIme in seconds
P_291 = P_29*exp(-4.9*10^(-4)*ts1);
P_391 = P_39*(exp(-3.41*10^(-6)*ts1)-(7*10^(-3)*exp(-4.9*10^(-4)*ts1)));
printf(" \n Decay energy one hour after shutdown with effect of Uranium-239 and Neptunium-239 decay = %2.2f MW and %2.2f MW respectively",P_291,P_391);

// One year after shutdown  
P_292 = 0;                                    // Half life of Uranium-239 is 23.5 minutes
P_392 = 0;                                    // Half life of Neptunium-239 is 2.35 days
printf(" \n Decay energy one year after shutdown with effect of Uranium-239 and Neptunium-239 decay = %d MW and %d MW respectively",P_292,P_392);
// There is a slight deviation in the values as compared with the texbook. This is because of approximation of difference values in the textbook.



