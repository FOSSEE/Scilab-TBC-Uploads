clear;
clc;
v=1;
p=.91;
y=acosd(-.91)-180;
y=round(y*10)/10;
i=v*%e^(y*%i*%pi/180);
x=.37*%e^(%i*%pi/2);
e=v+(i*x);
e=round(e*100)/100;
p=abs(e/x)*v;
mprintf("the steady state limit=%fp.u.",p);
a=atand(imag(i),real(i))
