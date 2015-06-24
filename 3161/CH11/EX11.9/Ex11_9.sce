clc;
//page 595
//problem 11.9

//Energy aasosciated with each bit Eb = 5 * 10^(-8) J
Eb = 5 * 10^(-8);

//Power Spectral Density n = 2 * 10^(-9) W/Hz
n = 2 * 10^(-9);

//Probability of error Pe
Pe = 0.5*erfc(((Eb*(%pi)^2)/(16*n))^0.5);

disp('Probability of error of QPR system is '+string(Pe));

//Given Bandwidth of channel is BW
BW = 10*10^3;

D = 2*BW;

disp('Data rate is '+string(D)+' bps');

