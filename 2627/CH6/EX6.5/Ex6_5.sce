//Ex 6.5
clc;clear;close;
format('v',5);
N=900;//rpm
Vs=460;//V
Vs_new=200;//V
fi_ratio=0.7;//ratio of new flux to original flux
kfi=Vs/N;//for original flux
Nnew=Vs_new/kfi/fi_ratio;//rpm(new speed)
disp(round(Nnew),"Speed in rpm");
