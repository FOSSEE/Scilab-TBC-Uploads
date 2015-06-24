//Example 2.43 :percentage change in current
clc;
clear;
close;
//given data
r=0.5;//kilo ohm
r1=1;//kilo ohm
z1=((%i*r1*r)/(r1+%i*r));//kilo-ohm
z1m=sqrt(real(z1)^2+imag(z1)^2);//kilo-ohm
z2=((%i*r1*r)/(r+%i*r1));//kilo-ohm
z2m=sqrt(real(z1)^2+imag(z1)^2);//kilo-ohm
tz=z1m+z2m;//kilo-ohm
f=50;//Hz
V=1;//V
i=V/tz;//A
v1=i*z1m*10^-3;//V
v2=i*10^-3*z2m;//V
df=f-((f*5)/100);//Hz
rc1=((r*df)/f);//k-ohm
rc2=((r1*df)/f);//k-ohm
z1n=((%i*rc1)/(r1+%i*rc1));//
z1nm=sqrt(real(z1n)^2+imag(z1n)^2);//k-ohm
z2n=((%i*rc2*r)/(r+%i*rc2));//
z2nm=sqrt(real(z1n)^2+imag(z1n)^2);//k-ohm
znw=z1nm+z2nm;//k-ohm
in=V/znw;//
disp(in,"current is ,(mA)=")
