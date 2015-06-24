//Example 3_19
clc;
clear;
close;
format('v',6);
//given data :
//v=200*sin(314*t+%pi/3)
//i=20*sin(314*t+%pi/6)
Vm=200;//V
omega=314;//rad/s
V=Vm/sqrt(2);//V
f=omega/2/%pi;//Hz
Im=20;//A
I=Im/sqrt(2);//A
fi=%pi/3-%pi/6;//radian
pf=cos(fi);//power factor
disp(pf,"(i) Power Factor(Lagging)");
P=V*I*cos(fi);//W
disp(P,"(ii) Average Power(W)");
Z=V/(I*expm(%i*-fi));//ohm
Zmag=abs(Z);//ohm
Zang=atand(imag(Z),real(Z));//degree
disp(Zang,Zmag,"(iii) Impedence in polar form, Magnitude(ohm) & angle(degree) are");
disp(Z,"(iii) Impedence in rectangular form(ohm)");
R=real(Z);//ohm
disp(R,"(iv)Value of R(ohm)");
XL=imag(Z);//ohm
L=XL/2/%pi/f*1000;//mH
disp(L,"(iv)Value of L(mH)");
