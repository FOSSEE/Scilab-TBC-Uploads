//Example 3.19:Resistance and Inductance
clc;
clear;
close;
f=1;//assume
r1=25;//ohms
i=50;//MH
x=r1+%i*(2*%pi*f*(i*10^-3));//
r2=2;//ohms
r=real(x)-r2;//ohms
l=imag(x)/(2*%pi*f);//henry
disp(r,"resistance is,(ohm)=")
disp(l*10^3,"inductance is,(mH)=")
