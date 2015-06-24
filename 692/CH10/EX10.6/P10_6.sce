//EXAMPLE 10.6
//FIlter length  for window -based design 
clear;
clc;
wp=0.3*%pi;//rad/sec
ws=0.5*%pi;//rad/sec
as=40;//dB

wc=(wp+ws)/2;//cutoff frequency
Bw=ws-wp;
disp(Bw,'Normalized transition bandwidth is = ')
//Hann window
M1=3.11*%pi/Bw;
disp(M1,'Value of M = ')
//Hamming window
M2=3.32*%pi/Bw;
disp(M2,'Value of M = ')
//Blackman window
M3=5.56*%pi/Bw;
disp(M3,'Value of M = ')