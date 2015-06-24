//Example 3 // relaxation time ,damping force ,time and total distance
clc;
clear;
close;
v=10;//cm/s
vo=100;//cm/s
t=23;//sec
x=-(log(v/vo))/t;//
t=(1/x)*1;//seconds
disp(round(t),"relaxation time is,(seconds)=")
m=40;//gm
vx=50;//cm/sec
fd=((-x*m*10^-3*vx*10^-2));//newton
disp(fd,"damping force is ,(newton)=")
tx=5*(log(10));//
disp(tx,"time in which kinetic energy will reduce to 1/10th of its value is ,(seconds)=")
xx=v*1;//
disp(xx,"distance travelled is,(m)=")
