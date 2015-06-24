clc;
//page 588
//problem 11.8

//Energy aasosciated with each bit Eb = 5 * 10^(-8) J
Eb = 5 * 10^(-8);

//Power Spectral Density n = 2 * 10^(-9) W/Hz
n = 2 * 10^(-9);

//No of symbols M
M = 16

//No of bits N
N = log2(M);

//Error limit for 16-PSK is P_16_PSK
P_16_PSK = erfc(((N*Eb*(%pi)^2)/(((M)^2)*n))^0.5);

disp('Upper limit of error probability of 16 PSK system is '+string(P_16_PSK));

//Error limit for 16-QASK is P_16_QASK
P_16_QASK = 2*erfc(((0.4*Eb)/(n))^0.5);

disp('Upper limit of error probability of 16 QASK system is '+string(P_16_QASK));

//Error limit for 16-FSK is P_16_FSK
P_16_FSK = ((2^4 - 1)/2)*erfc(((N*Eb)/(2*n))^0.5);

disp('Upper limit of error probability of 16 FSK system is '+string(P_16_FSK)+', negligibly small');
