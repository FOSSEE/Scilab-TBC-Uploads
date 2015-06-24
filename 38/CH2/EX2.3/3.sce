// Caption: Finding peak mmf and flux
clear;
close;
clc;
function [F_peak]=mmf(k,N,m,I)
  F_peak=(1.5*4*k*N*I)/(%pi*2*m);
endfunction

f=mmf(.92,45,3,700);
U_o=4*%pi*10^-7;
B_peak=U_o*8.81*10^3/.01;//flux density
vel=25*0.5;//in m/s