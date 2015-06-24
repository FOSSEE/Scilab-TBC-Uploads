//Example 3.52:loss angle
clc;
clear;
close;
r2=2000;//ohms
r3=2850;//ohms
r4=0.4;//ohms
c4=0.5;//micro-F
R4=4.8;//ohms
r1=((r2*(R4+r4))/r3);//ohms
c1=((r3*c4)/r2);//micro-F
f=450;//Hz
w=2*%pi*f;//
d=f*c1*10^-6*r1;//
ad=atand(d);//
x=round(ad);//
disp("loss angle is "+string(x)+" degree and "+string(round(ad*60))+" minutes ")
