close();
clear;
clc;
//time period 'T'
T = 0.01; //s
//voltage as a function of time 'v' 
function volt = v(t)
  volt = (10^4*t)^2;
endfunction
//RMS value of voltage 'V'
V = sqrt(1/T * intg(0,T,v)); //V
mprintf("RMS value of voltage, V = %f V",V);