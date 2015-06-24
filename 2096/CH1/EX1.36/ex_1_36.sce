//Example 1.36// damping ration,damped natural frequency ,natural frequency and time constant
clc;
clear;
close;
q=1.22;//in Nm/rad
j=0.14;//in kg meter square
w=1.95;//frequency in rad/s
wn=sqrt(q/j);//natural frequency in rad/s
y=(w/wn);//damping ratio
y1=0.555;//damping ratio corresponding to maximum possible error of 8%
wd=wn*sqrt(1-y1^2);//damped natural frequency in rad/s
t=(1/wn);//time constant in seconds
disp(wn,"natural frequency in rad/s")
disp(y1,"damping ratio is")
disp(wd,"damped natural frequency in rad/s is")
disp(t,"time constant in seconds is")
