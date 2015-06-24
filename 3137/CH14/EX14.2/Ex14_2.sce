//Initilization of variables
d=500 //mm
wo=0 //rpm
w=300 //rpm
t=20 //s
t1=2 //s
//Calculations
alpha=(2*%pi*(1/60)*(w-wo))/t //rad/s^2
w1=wo+alpha*t1 //rad/s
v=(d/(2*1000))*w1 //m/s
a_n=(d/(2*1000))*w1^2 //m/s^2
a_t=(d/(2*1000))*alpha //m/s^2
a=sqrt(a_n^2+a_t^2) //m/s^2
theta=acosd(a_n/a) //degrees
//Result
clc
printf('The computed values are\n alpha=%frad/s^2,w1=%frad/s,v=%frad/s\n a=%fm/s^2 and the angle made is %fdegrees',alpha,w1,v,a,theta)
