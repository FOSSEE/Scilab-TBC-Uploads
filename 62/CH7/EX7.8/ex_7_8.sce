clc;
close
clear;
z=%s;
tf=syslin('d',((1+(1/2)*z^-1)/(1-(3/4)*z^-1+(1/8)*z^-2)));
ss=tf2ss(tf);
