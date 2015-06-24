// Example 6.4:loss
clc;
clear;
close;
format('v',8)
d1=80;//micro meter
na1=0.25;//
alpha1=2;//
d2=60;//in micro meter
na2=0.21;//
alpha2=1.9;//
ncd=(d2/d1)^2;//
nna=(na2/na1)^2;//
nalpha=((1+(2/alpha1))/(1+((2/alpha2))));//
nt=ncd*nna*nalpha;//
lt=(-10*log10(nt));//in dB
disp(lt,"total loss in dB is")

