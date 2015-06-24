//Exa 5.15
clc;
clear;
close;
//Given data :
f=50;//Hz
l=100;//km
P=50*10^6;//W
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
VRL=132*10^3;//Volt
VR=VRL/sqrt(3);//Volt
R=0.1*l;//ohm
XL=0.3*l;//ohm
Z=R+%i*XL;//ohm
Y=3*10^-6*l;//S
IR=P/(sqrt(3)*VRL*pf);//A
IR=IR*(cos_fi_r-%i*sin_fi_r);//A
ICR=1/2*%i*Y*VR;//A
IL=IR+ICR;//A
VS=VR+IL*Z;//Volt
VSL=sqrt(3)*abs(VS);//Volt
disp(VSL/1000,"Sending end line voltage(kV) :");
ICS=1/2*%i*Y*VS;//A
IS=IL+ICS;//A
fi_s=atand(imag(VS),real(VS))-atand(imag(IS),real(IS));//
cos_fi_s=cosd(fi_s);//sending end pf
disp(cos_fi_s,"Sending end power factor(lag) : ");
Eta_T=sqrt(3)*VRL*abs(IR)*cos_fi_r/(sqrt(3)*VSL*abs(IS)*cos_fi_s)*100;//%
disp(Eta_T,"Transmission Efficiency(%) : ");
