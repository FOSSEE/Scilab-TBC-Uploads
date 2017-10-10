//ex2.5   from the previous problem find instantaneous voltage in -X direction


//at x=0 and t=0 v(t)=8.66V
vt=8.66;
o=30*3.142/180;
V=vt/cos(o);
//at x=1 and t=100nSec
w=2e9*%pi;
t=100e-9;
b=28.2;
x=1;
a=2.23;
vt1=V*exp(a*x)*cos(o+w*t+b*x);
disp('the votage at x=1m & t=100nsec is= '+string(vt1)+'V');

