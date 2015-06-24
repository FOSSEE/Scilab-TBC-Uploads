//Page Number:  289
//Example 5.3
clc;
//Given
r0=45D+3; //W
j0=25D-3; //A
V=1500; //V
f=5D+9; //hz
d=1; //mm
d1=d/1000; //m
l=3.5; //cm
l1=l/100; //m
rsh=32D+3; //ohms
j1x=0.582;
x=1.841;

//(i) Input gap voltage
w=2*%pi*f;
v0=(5.93D+5*sqrt(V));
thetag=(w*d1)/v0;
bet=sin(thetag/2)/(thetag/2);
theta0=(w*l1)/v0;
v1=(2*V*x)/(bet*theta0);
disp(v1,'Input gap voltage:');

//(ii) Voltage gain
av=(bet^2*theta0*j1x*rsh)/(r0*x);
disp(av,'Voltage gain:');
