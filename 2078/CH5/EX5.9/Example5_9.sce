//Exa 5.9
clc;
clear;
close;
//Given data :
l=100;//km
P=20;//MW
VRL=66*10^3;//volt
f=50;//Hz
R=10;//ohm
L=111.7*10^-3;//H
C=0.9954*10^-6;//F
pf=0.8;//power factor
X=2*%pi*f*L;//ohm
Y=2*%pi*f*C;//S
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
VR=VRL/sqrt(3);//volt
IR=P*10^6/(sqrt(3)*VRL*pf);//A
IR=IR*(cos_fi_r-%i*sin_fi_r);//A
Z=R+%i*X;//ohm
Vdash=VR+1/2*IR*Z;//Volt
IC=Vdash*%i*Y;//A
IS=IR+IC;//A
VS=Vdash+1/2*IS*Z;//Volt
VSL=abs(VS)*sqrt(3);//Volt
disp(VSL,"Sending end line voltage(Volt) :");
Reg=(VSL-VRL)/VRL*100;//%
disp(Reg,"Regulation(%) :  ");
fi_s=atand(imag(VS),real(VS))-atand(imag(IS),real(IS));//
cos_fi_s=cosd(fi_s);//sending end pf
Eta_T=sqrt(3)*VRL*abs(IR)*cos_fi_r/(sqrt(3)*VSL*abs(IS)*cos_fi_s)*100;//%
disp(Eta_T,"Transmission Efficiency(%) : ");
//Ans is not accurate in the book.
