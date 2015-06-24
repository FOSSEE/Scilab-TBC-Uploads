// Caption: Finding peak mmf and flux
clear;
close;
clc;

function [F_peak]=mmf(k,N,p,I)
  F_peak=(4*k*N*I)/(%pi*p);
endfunction
f=mmf(.9,46,2,1500);//peaf fundamental mmf

B_peak=(4*%pi*10^-7*f)/(7.5*10^-2);//peak flux density

phy=2*B_peak*4*0.5;//flux per pole
E_rms=sqrt(2)*%pi*60*.833*24*2.64;//rms voltage
disp(E_rms,'RMS value of voltage generated=')