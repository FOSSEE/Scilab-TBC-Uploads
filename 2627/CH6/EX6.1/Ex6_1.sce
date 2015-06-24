//Ex 6.1
clc;clear;close;
format('v',5);
P=4;//no. of poles
c=2;//no. of parallel paths
p=4/2;//no. of pair of poles
S=51;//no. of slots
C=12;//conductors per slot
N=900;//rpm(speed)
fi=25/1000;//Wb
Z=S*C;//total no. of conductors
E=2*Z/c*N*p/60*fi;//V
disp(E,"Generated emf(V)");
