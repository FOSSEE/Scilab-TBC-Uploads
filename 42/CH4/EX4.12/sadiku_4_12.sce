clear;
clc;
q=10*10^-6;
function[V]=pot(r,P,Q);
V=10*sin(P)*cos(Q)/r^2;
endfunction
Va=pot(1,%pi/6,2*%pi/3);
Vb=pot(4,%pi/2,%pi/3);
W=q*(Vb-Va);
disp(W*10^6,'Work done in uJoule');