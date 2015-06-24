//Example 5.12 //hysteresis and eddy current components
clc;
clear;
close
w1=132;//W
f1=20;//Hz
x=w1/f1;//
w2=425;//W
f2=50;//Hz
y=w2/f2;//
A=[1 f1;1 f2];//
B=[x;y];//
X=A\B;//
Wh=X(1,1)*f2;//W
We=X(2,1)*f2^2;//W
disp(Wh,"hysteresis current component of the loss is,(W)=")
disp(We,"Eddy current component of the loss is,(W)=")
