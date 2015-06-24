//Ex 3.13
clc;clear;close;
format('v',5);
R=30;//ohm
V=230;//V
f=50;//Hz
VR=130;//V
VLr=180;//V
fiLr=acosd((V^2-VR^2-VLr^2)/(2*VR*VLr));//degree(lag)
I=VR/R;//A
Pr=VLr*I*cosd(fiLr);//W
disp(Pr,"Power dissipated in the coil(W)");
