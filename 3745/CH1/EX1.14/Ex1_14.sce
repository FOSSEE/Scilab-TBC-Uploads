// Ex 14 Page 355

clc;clear;close;
// Given
f=50;//Hz
Vm=400;//V
R=10;//ohm
L=0.1;//H
t=0.02;//sec
XL=2*%pi*f*L;//ohm
Z=R+%i*XL;//ohm
Im=Vm/abs(Z);//A
fi=atan(XL/R);//degree
lambda=L/R;//sec
printf("expression for current:")
printf("\n i = %.1f*sin(314*t-%.3f)+0.95*e**(-100*t)",Im,fi)
i = Im*sin(314*t-fi)+0.95*%e**(-100*t);//A
printf("\n current after 0.02 sec is : %0.1f A",i)
i2=Im*(0.95*%e**(-100*t));//A
printf("\n transient component is : %0.2f A",i2)
