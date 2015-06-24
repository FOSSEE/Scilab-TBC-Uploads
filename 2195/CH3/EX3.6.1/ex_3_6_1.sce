//Example 3.6.1 //design
clc;
clear;
close;
format('v',8)
rm=50;//in ohms
im=2;//in mA
i1=2;//in amperes
i2=10;//in amperes
i3=15;//in amperes
x=(im*rm*10^-3)/i1;//
A=[1 1;1 -7500];//
B=[0.05;-50];
X=A\B;
z=X(2,1);//
R1=0.2167/10.002;//in ohms
R2=0.025-R1;// in ohms
disp(R1,"resistance (R1) in ohms")
disp(R2,"resistance (R2) in ohms")
disp(z,"resistance (R3) in ohms")
