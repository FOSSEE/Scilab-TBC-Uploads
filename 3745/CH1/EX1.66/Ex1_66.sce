// Ex 66 Page 407

clc;clear;close;
// Given
f=50;//Hz
Vm=500;//V
R=20;//ohm
L=0.15;//H
t=0.03;//sec
XL=2*%pi*f*L;//ohm
Z=R+%i*XL;//ohm
Im=Vm/abs(Z);//A
fi=atan(XL/R);//degree
lambda=L/R;//sec
i = Im*sin(314*t-fi)+0.95*%e**(-100*t);//A
printf("\n current after 0.03 sec is : %0.1f A",i)
i2=Im*(0.95*%e**(-100*t));//A
printf("\n transient component is : %0.2f A",i2)
