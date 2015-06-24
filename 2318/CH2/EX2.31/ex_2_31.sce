//Example 2.31: Resistance and electromotive
clc;
clear;
close;
//given data :
i1=20;// in mA
i2=400;// in mA
i3=i1/i2;
K1=i1/i3;
v1=19.5;// in mV
v2=23.4;// in mV
x1=v1/K1;//
y=100;//mV
k2=y/i3;//
x2=v2/k2;//
A=[1 -x1;1 -x2];
B=[v1;v2];//
X=A\B;//
disp(X(1,1),"electromotive force is,(mV)=")
disp(X(2,1),"resistance is ,(ohm)=")
