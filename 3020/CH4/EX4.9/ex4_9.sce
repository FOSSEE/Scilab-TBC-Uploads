
clc;
clear all;
V = 12550; // Volume of hall in cubic meters
T1 = 1.5 ; // Reverberation time in seconds
A2 = 200; // Absorption coefficent of cushioned chair in sabine
A1 =  (0.163*V)/T1;
T2= (0.163*V)/(A1+A2);
disp('s',T2,'The new reverberation time of hall after adding cushioned chair is')
//Slight variation in answer than textbook..there is mistake in book.. checked in calculator also..
