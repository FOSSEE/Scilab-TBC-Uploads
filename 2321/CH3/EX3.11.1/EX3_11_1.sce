//Example No. 3.11.1
clc;
clear;
close;
format('v',6);

D=20;//Directivity
K=90;//%//radiation efficiency
G=(K/100)*D;//Gain
GdB=10*log10(G);//dB
disp(GdB,"Gain in dB : ");
//Answer is not calculated in the book.
