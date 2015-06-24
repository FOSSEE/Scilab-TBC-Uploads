//Example 2.6.1;//design
clc;
clear;
close;
//given data :
format('v',7)
c1=0.1;//in micro farads
vbb=30;//in volts
n=0.51;//
ip=10;//in micro amperes
vv=3.5;//in volts
iv=10;//in mA
f=50;//in Hz
w=50;//eifth in micro seconds
vd=0.7;//in volts
vp=n*vbb+vd;//in volts
vc=vp;//in volts
x=log(vv/(vp-vd));//
r1=-(w*10^-6/(c1*10^-6*x));//
T=(1/(f))*10^3;//in ms
t1=T-(w*10^-3);// in ms
r=((t1*10^-3)/(c1*10^-6*log(1/(1-n))));//
r2=(10^4/(n*vbb));//in ohms
disp(round(r1),"resistance R1 in ohm is")
disp(r*10^-3,"resistance R in kilo ohm is")
disp(r2,"resistance R2 in ohm is")
