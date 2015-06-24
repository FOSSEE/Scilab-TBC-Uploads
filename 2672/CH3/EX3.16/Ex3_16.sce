//Example 3_16
clc;
clear;
close;
format('v',5);
//given data :
//v=325*sin(314*t)
//i=14.14*sin(314*t-60)
Vm=325;//V
omega=314;//rad/s
V=Vm/sqrt(2);//V
f=omega/2/%pi;//Hz
Im=14.14;//A
I=Im/sqrt(2);//A
fi=60;//degree
pf=cosd(fi);//power factor
P=V*I*cosd(fi);//W
disp(P,"Powe Consumed(W)");
Z=V/(I*expm(%i*-fi*%pi/180));//ohm
R=real(Z);//ohm
disp(R,"Value of R(ohm)");
XL=imag(Z);//ohm
L=XL/2/%pi/f*1000;//mH
disp(L,"Value of L(mH)");
//Answer is not accurate in the book.
