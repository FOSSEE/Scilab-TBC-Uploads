clc;
clear;
format('v',11);
I1=integrate('exp(x)','x',-5,0);
I2=integrate('exp(-x)','x',0,5);
I3=integrate('exp(y)','y',-3,0);
I4=integrate('exp(-y)','y',0,3);
Q=(10^-12)*(I1+I2)*(I3+I4);
disp(Q,"total charge in coulomb=");
