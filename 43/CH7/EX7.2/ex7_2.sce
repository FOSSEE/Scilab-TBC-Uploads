clc;
close
clear;
s=%s;
tf=syslin('c',((s+3)/((s+2)^2*(s+1))));
ss=tf2ss(tf);
disp(ss)