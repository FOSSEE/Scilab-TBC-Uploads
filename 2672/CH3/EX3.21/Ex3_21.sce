//Example 3_21
clc;
clear;
close;
format('v',5);
//given data :
L=100;//mH
//i=14.148sin(314*t+%pi/6)
//v=325*sin(314*t)
Vm=325;//V
Im=14.14;//A
omega=314;//rad/s
V=Vm/sqrt(2);//V
I=Im/sqrt(2);//A
Z=V/(I*expm(%i*%pi/6));//ohm
R=real(Z);//ohm
disp(R,"Value of R(ohm)");
XCL=-imag(Z);//ohm//XCL=XC-XL
XC=XCL+omega*L/1000;//ohm
C=1/XC/omega;//F
C=C*10^6;//micro F
disp(C,"Value of C(micro F)");
//Answer is not accurate in the book.
