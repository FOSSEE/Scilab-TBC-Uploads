clc;
//page 719
//problem 13.16

//Given, Eb = 10^-9Joule, n/2 = 10^-9 Watt/Hertz
Eb = 10^-8
n = 2*10^-9

//Probability of error for trellis-decoded modulation(Pe) = (1/2)*erfc(sqrt(1.5*Eb/n))
Pe = (1/2)*erfc(sqrt(1.5*Eb/n))

disp('Probability of error for trellis-decoded modulation is '+string(Pe))

//Probability of error for Qpsk modulation(Pe) = (1/2)*erfc(sqrt(Eb/n))
Pe = (1/2)*erfc(sqrt(Eb/n))

disp('Probability of error for Qpsk modulation is '+string(Pe))
