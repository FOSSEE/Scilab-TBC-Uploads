//Exa 5.16
clc;
clear;
close;
//Given data :
f=50;//Hz
l=10;//km
S1=5000*10^3;//VA
S2=10000*10^3;//VA
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
pf2=0.7071;//power factor
cos_fi_r2=pf2;
sin_fi_r2=sqrt(1-cos_fi_r2^2);
R=0.6*l;//ohm
XL=1.5*l;//ohm
VRL=33*10^3;//Volt
VR=VRL/sqrt(3);//Volt
I1=S1/(sqrt(3)*VRL);//A
I1=I1*(cos_fi_r-%i*sin_fi_r);//A
Z1=R+%i*XL;//ohm
VB=VR+I1*Z1;//Volt
VBL=sqrt(3)*abs(VB);//Volt
disp(VBL/1000,"Line voltage at mid point(kV) : ");
I2=S2/(sqrt(3)*VBL);//A
I2=I2*(cos_fi_r2-%i*sin_fi_r2);//A
I=I1+I2;//A
disp("Total current(A), magnitude is "+string(abs(I))+" and angle in degree is "+string(atand(imag(I),real(I))));
Z2=R+%i*XL;//ohm
VS=VB+I*Z2;//Volt
VSL=sqrt(3)*abs(VS);//Volt
disp(VSL/1000,"Sending end line voltage(kV) :");
