//Example 6.6.6 :minimum instantaneous load current,peak instantaneous current and maximum peak to peak ripple
clc;
clear;
close;
format('v',6)
v=220;//volts
r=10;//in ohms
l=15.5;//in mH
f=5;//in kHz
Eb=20;//in volts
d=0.5;//
x=exp((-(1-d)*r)/(f*10^3*l*10^-3));//
y=(1-x)*(Eb/r);//
y1=(1-x)*((v-Eb)/r);//
A=[0.94 -0.94*0.94;0.94 -1];
B=[-0.94*0.125;-1.25];
X=A\B;//
disp("part (a)")
disp(X(1,1),"minimum instantaneous current in amperes is")
disp("part (b)")
disp(X(2,1),"peak instantaneous current in amperes is")
disp("part (c)")
PP=X(2,1)-X(1,1);//
disp(PP,"maximum peak to peak ripple in the load current in amperes is")
