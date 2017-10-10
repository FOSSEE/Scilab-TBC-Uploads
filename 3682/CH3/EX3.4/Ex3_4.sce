// Exa 3.4

clc;
clear;

// Given data

// Fig. 3.13 shows output of an op-amp voltage follower
F =2; // frequency in MHz
Vipp= 8; // Input voltage (Peak to peak) in volts

// Solution

printf(' Since the frequency is given we can get time period as T = %.1f μsec. \n\n',1/F);

printf('  Since, the slew rate is defined as the maximum rate of change of the output, \n  so from Fig. 3.13, it can be seen that, maximum change in output is 6V in 0.25 μsec.');

dVo=6;
dT=0.25 ; // μsec
SR=dVo/dT;

printf('\n\n  Therefore, the slew rate of the op-amp = %d V/μsec. \n',SR);
