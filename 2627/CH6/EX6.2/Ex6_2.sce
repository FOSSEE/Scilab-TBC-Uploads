//Ex 6.2
clc;clear;close;
format('v',5);
P=8;//no. of poles
c=8;//no. of parallel paths
p=8/2;//no. of pair of poles
E=260;//V(generated emf)
fi=0.05;//Wb
S=120;//no. of slots
N=350;//rpm(speed)
Z=E/(2/c*N*p/60*fi);//V
disp(round(Z),"No. of conductors per slot");
