//Exa 5.11
clc;
clear;
close;
//Given data :
S=1*10^3;//kVA
pf=0.71;//power factor
VRL=22*10^3;//Volt
f=50;//Hz
R=15;//ohm
L=0.2;//H
C=0.5*10^-6;//F
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
IR=S*10^3/VRL;//A
IR=IR*(cos_fi_r-%i*sin_fi_r);//A
X=2*%pi*f*L;//ohm
//Z=sqrt(R^2+X^2);//ohm
Z=R+%i*X;//ohm
Y=2*%pi*f*C;//S
ICR=1/2*%i*Y*VRL;//A
IL=IR+ICR;//A
VS=VRL+IL*Z;//Volt
disp("Sending end voltage(Volt), magnitude is "+string(abs(VS))+" and angle in degree is "+string(atand(imag(VS),real(VS))));
ICS=1/2*%i*Y*VS;//A
IS=IL+ICS;//A
disp("Sending end current(A), magnitude is "+string(abs(IS))+" and angle in degree is "+string(atand(imag(IS),real(IS))));
fi_s=atand(imag(VS),real(VS))-atand(imag(IS),real(IS));//
cos_fi_s=cosd(fi_s);//sending end pf
disp(cos_fi_s,"Sending end power factor(lag) : ");
