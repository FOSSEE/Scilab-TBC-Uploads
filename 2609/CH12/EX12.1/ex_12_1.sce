////Ex 12.1
clc;
clear;
close;
format('v',9);
gm=55;//micro U
C=8.75;//pF
f3dB=gm/(2*%pi*C);//MHz
disp(f3dB,"f-3dB frequency(MHz)")
