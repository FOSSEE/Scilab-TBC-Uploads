clear;
//clc();

z=500;
r=10*10^(3);
c=0.005*10^(-6);
tau=c*r*z/(z + r);

ef=10;
t=5*10^(-6);
e=(2*r*ef/(z + r))*(1- exp(-t/tau));
printf("The voltage across load after 5us is:%.2f kV",e);
