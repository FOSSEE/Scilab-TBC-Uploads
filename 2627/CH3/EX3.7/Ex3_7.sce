//Ex 3.7
clc;clear;close;
format('v',4);
ZLr=50;//ohm
fiLr=45;//degree(lag)(between current & Voltage)
R=40;//ohm
I=3;//A(Circuit current)
VR=I*R;//V
VLr=I*ZLr;//V
V=sqrt(VR^2+VLr^2+2*VR*VLr*cosd(fiLr));//V
disp(V,"Supply voltage(V)");
fi=acosd((VR+VLr*cosd(fiLr))/V);//degree
disp(fi,"Circuit phase angle(lag in degree)");
