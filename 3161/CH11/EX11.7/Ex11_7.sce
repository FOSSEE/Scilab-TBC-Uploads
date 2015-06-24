clc;
//page 575
//problem 11.7

//Amplitude of signal is A = 10 mV
A = 10*10^-3;

//Power Spectral Density n = 2 * 10^(-9) W/Hz
n = 2 * 10^(-9);

//Data rate is D = 10^4 bps;
D = 10^4;

//Time taken for a bit to traverse
T = 1/D;

//Energy per signal element is Es
Es = A^2/(2*D);

//Probability of error Pe_a
Pe_a = 0.5*erfc((0.6*Es/n)^0.5);
disp('Probability of error when offset is small is '+string(Pe_a));

//Probability of error Pe_b
Pe_b = 0.5*erfc((Es/(2*n))^0.5);
disp('Probability of error when frequencies used are orthogonal is '+string(Pe_b));

//Probability of error Pe_c
Pe_c = 0.5*exp(-(Es/(2*n)));
disp('Probability of error for non coherent detection is '+string(Pe_c));

