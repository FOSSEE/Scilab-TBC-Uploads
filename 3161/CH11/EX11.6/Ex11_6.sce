clc;
//page 575
//problem 11.6

//Amplitude of signal is A = 10 mV
A = 10*10^-3;

//Power Spectral Density n = 2 * 10^(-9) W/Hz
n = 2 * 10^(-9);

//Frequency is f = 1 MHz
f = 1*10^6;

//Data rate is D = 10^4 bps;
D = 10^4;

//Time taken for a bit to traverse
T = 1/D;

//Energy per signal element is Es
Es = A^2/(2*D);

//Probability of error Pe
Pe = 0.5*erfc((Es/n)^0.5);

disp('Probability of error is '+string(Pe));

//Phase shift phi = %pi/6
phi = %pi/6;

//Probability of error Pe_local_oscillator
Pe_local_oscillator = 0.5*erfc(((Es/n)^0.5)*cos(phi));

disp('Probability of error of local oscillator with phase shift is '+string(Pe_local_oscillator));

//Timing error t
t = 0.1*T;

//Probability of error when there is a synchronization fault Pe_timing_error
Pe_timing_error = 0.5*erfc(((Es/n)*(1 - 2*(t/T))^2)^0.5);

disp('Probability of error with synchronization fault is '+string(Pe_timing_error));

//Probability of error when both faults occur Pe_both
Pe_both = 0.5*erfc(((Es/n)*(cos(phi)^2)*(1 - 2*(t/T))^2)^0.5);

disp('Probability of error when both faults occur '+string(Pe_both));





