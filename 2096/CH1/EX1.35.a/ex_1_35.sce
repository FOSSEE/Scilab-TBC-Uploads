//Example 1.35// damping ration,damped natural frequency ,static sensivity and time constant
clc;
clear;
close;
k=1;//static sensivity
wn=sqrt(30);//natural frequency in rad/s
y=(0.1*wn)/2;//damping ratio
wd=wn*sqrt(1-y^2);//damped natural frequency in rad/s
t=(1/wn);//time constant in seconds
disp(y,"damping ratio is")
disp(wd,"damped natural frequency in rad/s is")
disp(k,"static sensivity is")
disp(t,"time constant in seconds is")
