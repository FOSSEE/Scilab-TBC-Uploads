clc;
clear;
close;
z=%s;
Hz=syslin('d',(z/(2*z^2-3*z+1)));
ss=tf2ss(Hz)
disp(ss)
