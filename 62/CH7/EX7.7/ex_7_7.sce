clc;
close
clear;
z=%s;
Hz=syslin('d',(1/(1-(3/4)*z^-1+(1/8)*z^-2)));
ss=tf2ss(Hz);
