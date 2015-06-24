//Find bandwidth
clc;
clear all;
Q=250; //Q-factor
Fr=5*(1e6) //resonant frequency 
BW=Fr/Q;
disp(+'Hz',BW,'bandwidth = ') 
