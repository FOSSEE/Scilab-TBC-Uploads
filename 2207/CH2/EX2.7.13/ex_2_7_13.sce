//Example 2.7.13;//design
clc;
clear;
close;
format('v',6)
vs=30;//in volts
n=0.51;//
vd=0.7;//in volts
vp=(n*vs+vd);//in volts
c=0.1;//in micro farads
vv=3.5;//in volts
x=log(vv/(vp-vd));//
t2=50;//in micro seconds
r3=-((t2*10^-6)/(x*c*10^-6));//in ohms
f=50;//in Hz
t=(1/f)*10^3;//in ms
t1=(t-(t2*10^-6));//inms
x1=log(1-((vp-vv)/(vs)));//
y1=(-t1*10^-3)/(c*10^-6);//
r1=y1/x1;//in ohms
r2=(10^4)/(n*vs);//in ohms
disp(r1*10^-3,"R1 in ohm is")
disp(r2,"R2 in ohm is")
disp(round(r3),"R3 in ohm is")
disp(c,"capaictance in micro Farad is")
//R3 is wrong in the textbook
