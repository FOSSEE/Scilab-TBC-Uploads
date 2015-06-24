// Example 5(b): power absorbed
clc;
clear;
close;
v=400;//V
po=15;//kW
nfx=1440;//rpm
f=50;//Hz
z2=0.4+%i*1.6;//ohm
p=4;//
x=120;//Hz
ns=((x*f)/p);//rpm
s=((ns-nfx)/ns);//slip
ns1=(x*x)/p;//rpm
nfl1=(1-s)*ns1;//rpm
disp(nfl1,"full load speed is ,(rpm)=")
sm=real(z2)/imag(z2);//slip
disp(sm,"slip is,=")
tfy=((po*10^3)/(2*%pi*(nfl1/60)));//N-m
a=sm;//
tm=((a^2+s^2)/(2*a*s))*tfy;//N-m
disp(tm,"maximum torque is,(N-m)=")
