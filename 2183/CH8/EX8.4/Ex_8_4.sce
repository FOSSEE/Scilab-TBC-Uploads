//Example 8.4 // Average nummber of photon
clc;
clear;
close;
//given data :
format('v',5)
M=80;// multiplication factor
K=0.02;// carrier ionization rates
eta=85/100;// quntum efficiency
Bt=0.6;// assuming a raised cosine signal spectrum
SbyN=144;
FM=(K*M)+(2-(1/M))*(1-K);
eta_max=(2*Bt*FM*SbyN)/(eta);
disp(eta_max,"The average number of photon,(photon) = ")
// answer is wrong in a textbook
