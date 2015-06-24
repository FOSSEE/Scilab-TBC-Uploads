// Scilab Code Ex2.6 : Page-45 (2013)
clc; clear;
c = 2.998e+008;    // Speed of light in free space, m/s
v = 7712;    // Speed of the space shuttle, m/s
bita = v/c;    // Boost parameter
T_loss = 295.02;    // Total measured loss in time, ps/sec
Add_T_loss = 35.0;    // Additional time loss for moving clock from general relativity prediction, ps/s
// From time dilation relation, T0_prime = T*sqrt(1 - bita^2), solving for (T - T0_prime)/T
Calc_T_loss = bita^2/2*1e+012;    // Expected time lost per sec by the moving clock, ps/sec
Measured_T_loss = T_loss + Add_T_loss;    // Total measured loss in time per sec as per special relativity, ps/s
percent_T_loss = (Calc_T_loss - Measured_T_loss)/Calc_T_loss*100;    // Percentage deviation of measured and the calculated time loss per sec
T = 6.05e+05;    // Total time of the seven-day mission, s
delta_T = Calc_T_loss*1e-012*T;    // The total time difference between the moving and stationary clocks during the entire shuttle flight, s
printf("\nThe expected time lost per second for the moving clock = %6.2f ps", Calc_T_loss);
printf("\nThe percentage deviation of measured and the calculated time loss per sec for moving clock = %3.1f percent", percent_T_loss);
printf("\nThe total time difference between the moving and stationary clocks during the entire shuttle flight = %3.1f ms", delta_T/1e-003);

// Result
// The expected time lost per second for the moving clock = 330.86 ps
// The percentage deviation of measured and the calculated time loss per sec for moving clock = 0.3 percent
// The total time difference between the moving and stationary clocks during the entire shuttle flight = 0.2 ms 