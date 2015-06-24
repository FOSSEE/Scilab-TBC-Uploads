// Example 6.5:loss
clc;
clear;
close;
format('v',5)
d1=60;//micro meter
na1=0.25;//
alpha1=2.1;//
d2=50;//in micro meter
na2=0.20;//
alpha2=1.9;//
ncd=(d2/d1)^2;//
nna=(na2/na1)^2;//
nalpha1=1;//
nalpha=((1+(2/alpha1))/(1+((2/alpha2))));//
ncd1=1;//
nna1=1;//
nt=ncd*nna*nalpha1;//
ltf=(-10*log10(nt));//in dB
nt1=ncd1*nna1*nalpha;//
ltb=(-10*log10(nt1));//in dB
disp(ltf,"total loss forward direction in dB is")
format('v',6)
disp(ltb,"total loss backward direction in dB is")
