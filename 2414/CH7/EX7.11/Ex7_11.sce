clc;
clear all;
close();
//page no 239
//prob no. 7.11
W=2;   //kHz  (as in ex 7.10)
delta_theta=3;
Bt=2*(1+delta_theta)*W;   //applying carsom's rule
mprintf('The transmission bandwidth Bt= %i kHz ',Bt)
