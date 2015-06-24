//Example 3.62;resistance 
clc;
clear;
close;
d2=350;//
f2=1000;//Hz
s=1;//M-ohm
d1=250;//
f1=2.5;//Hz
X=((d2*f2*s)/(d1*f1));//M-ohm
l=400;///m
l1=1000;//m
x=(X*l)/l1;//M-ohm
disp(x,"resistance is ,(M-ohm)=")
