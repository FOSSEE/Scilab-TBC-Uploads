//Example 2.37: flux and current ratio error
clc;
clear;
close;
n1=1000;//A
n2=5;//A
r=1.6;//ohm
kn=n1/n2;//
ts=kn;//
wt=1.5;//watt
es=n2*r;//v
f=50;//Hz
ph=es/(4.44*f*kn);//m Wb
ep=es/kn;//
ie=wt/ep;//A
cd1=1;//
sd=0;//
K=((kn+(ie/n2)));//
re=((kn-K)/K)*100;//
disp(ph*10^3,"flux is ,(m-Wb)=")
disp(re,"ratio error is ,(%)=")
