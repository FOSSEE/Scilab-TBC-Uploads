//Caption: noise power
//Example 4.30ii
//page no 202
//Find  Quantizatio noise power 
clear;
clc;
fs=64000;
Amax=1;
fm=3500;
 del=343.6117*10^-3;//step size
 Nq=del^2/3;//Quantizatio noise power
 Nqd=Nq*(fm/fs);
disp("mW",Nqd*1000,"Quantizatio noise power ");
