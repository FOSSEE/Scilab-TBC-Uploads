clc;
close
clear;
s=%s;
tf=syslin('c',((s+3)/(s^3+5*s^2+8*s+3)));
ss=tf2ss(tf);
disp(ss)