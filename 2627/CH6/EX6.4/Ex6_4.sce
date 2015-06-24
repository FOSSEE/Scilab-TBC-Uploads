//Ex 6.4
clc;clear;close;
format('v',5);
P=4;//no. of poles
Vs=440;//V
c=2;//no. of parallel paths
p=4/2;//no. of pair of poles
Ia=50;//A
Ra=0.28;//ohm
Z=888;//conductors
fi=0.023;//Wb
emf=Vs-Ia*Ra;//V
N=emf/(2*Z/c*p/60*fi);//rpm
disp(round(N),"Speed in rpm");
