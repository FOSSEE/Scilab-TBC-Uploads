//EXAMPLE 10.6
//Order estimation using Dolph-Cebyshev window
clear;
clc;
wp=0.3*%pi;//rad/sec
ws=0.5*%pi;//rad/sec
as=40;//dB

wc=(wp+ws)/2;//cutoff frequency
Bw=ws-wp;
disp(Bw,'Normalized transition bandwidth is = ')

//Order of the filter
N = ((2.056*as) - 16.4)/(2.285*Bw);
disp(ceil(N),'Order of the filter,N =  ')