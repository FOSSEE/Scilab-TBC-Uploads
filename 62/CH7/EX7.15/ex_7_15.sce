clc;
close
clear;
s=%s;
tf=syslin('c',((4*s+1)/(s^2+3*s+2)));
ss=tf2ss(tf);
disp(ss)