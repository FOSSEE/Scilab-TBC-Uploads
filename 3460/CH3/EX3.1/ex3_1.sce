clc;
clear all;
f=1e3;//given frequency
t=(1e-6)*100;//given time
thita=135;//given angle
X=5;//given peak voltage
//part a
x=X*sin(((6.28*f*t)+thita)*%pi/180);
disp(x,'value of x for X=5 is=');
//part b
X=10;
x=X*sin(((6.28*f*t)+thita)*%pi/180);
disp(x,'value of x for X=10 is=');


