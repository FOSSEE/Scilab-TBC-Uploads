// Ex 8 Page 348

clc;clear;close;
// Given

Z1=(6.25+%i*1.25);//ohm
Z2=(5+%i*0);//ohm
//Z3=(5-%i*XC);//ohm
V=100;//V
f=50;//Hz
//Z23=(250+5*Xc**2)/(100+Xc**2)-%i*(25*Xc)/(100+Xc**2)
//for in phase condition imag part must be zero
//5*Xc**2-100*Xc+5*100=0
A=[5 -100 500];//polynomal 
XC=roots(A);
XC=XC(1);//ohm
C=1/(2*%pi*f*XC)*10**6;//uF
printf("Capacitance of XC = %.f uF",C)
Z=XC;//ohm
I=V/Z;//A
P=I**2*Z/1000;//kW
printf("\n Circuit current = %.f A and power = %.f kW",I,P)
