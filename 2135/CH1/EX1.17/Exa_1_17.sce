//Exa 1.17
clc;
clear;
close;
format('v',7);

//Given Data :
T1=0;//degree centigrade
K1=1.83;
T2=100;//degree centigrade
K2=6.78;
//T=a*log(K)+b
//solving for a and b by matrix
A=[log(K1) 1;log(K2) 1];
B=[T1;T2];
X=A^-1*B;
a=X(1);
b=X(2);
K=2.42;//bar
T=a*log(K)+b;//degree C
disp(T,"Temperature in degree C : ");
