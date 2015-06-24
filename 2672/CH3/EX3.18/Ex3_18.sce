//Example 3_18
clc;
clear;
close;
format('v',6);
//given data :
//v=100*sin(314*t)
//i=10*sin(314*t-%pi/6)
Vm=100;//V
omega=314;//rad/s
V=Vm/sqrt(2);//V
f=omega/2/%pi;//Hz
Im=10;//A
I=Im/sqrt(2);//A
fi=%pi/6;//radian
pf=cos(fi);//power factor
disp(pf,"Power Factor(Lagging)");
P=V*I*cos(fi);//W
disp(P,"Powe Consumed(W)");
Z=V/(I*expm(%i*-fi));//ohm
R=real(Z);//ohm
disp(R,"Value of R(ohm)");
XL=imag(Z);//ohm
L=XL/2/%pi/f*1000;//mH
disp(L,"Value of L(mH)");
