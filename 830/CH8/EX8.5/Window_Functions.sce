//Graphical//
//Figure 8.5
//Program to generate different window functions
clear;
close;
clc
M =61 ;
for n = 1:M
  h_Rect(n) = 1;
  h_hann(n) = 0.5-0.5*cos(2*%pi*(n-1)/(M-1));
  h_hamm(n) = 0.54-0.46*cos(2*%pi*(n-1)/(M-1));
  h_balckmann(n) = 0.42-0.5*cos(2*%pi*n/(M-1))+0.08*cos(4*%pi*n/(M-1));
end
plot2d(1:M,[h_Rect,h_hann,h_hamm,h_balckmann],[2,5,7,9]); 
legend(['Rectangular Window';'Hanning';'Hamming';'Balckmann']);
title('Window Functions for Length M = 61')
