//Example 7.13 // Maximum 3dB bandwidth
clc;
clear;
close;
//given data :
tF=5*10^-12;// in sec
G=60;// photoconductive gain
Bm=(1/(2*%pi*tF*G))*10^-6;
disp(Bm,"The maximum 3dB bandwidth,Bm(MHz) = ")
// answer is wrong in textbook
