clc;
close
clear;
s=%s;
tf=syslin('c',((3*s+7)/((s+1)*(s+2)*(s+5))));
ss=tf2ss(tf);
disp(ss)