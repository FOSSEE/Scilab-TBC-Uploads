//Example 2.7.10;//design
clc;
clear;
close;
//given data :
format('v',6)
vs=20;//in volts
c1=0.1;//in micro farads
vv=2.5;//in volts
n=0.66;//
ip=10;//in micro amperes
iv=10;//in mA
f=1;//in KHz
tg=40;//in micro seconds
vd=0.8;//in volts
vp=(n*vs+vd);//in volts
r1=((tg*10^-6/(c1*10^-6)));// in ohms
r=((1)/(f*10^3*c1*10^-6*log(1/(1-n))))*10^-3;//in killo ohms
rmin=(vs-vv)/iv;//minimum resistance in killo ohms
rmax=(vs-vp)/ip;//maxium resistance in killo ohms
r2=10^4/(n*vs);//in ohms
disp(vp,"Vp in volts is")
disp(r1,"R1 in ohm is")
disp(r,"R in kilo ohm is")
disp(rmin,"minimum resistance in kilo ohm is")
disp(rmax*10^3,"maximum resistance in kilo ohm is")
disp(round(r2),"R2 in ohm is")

