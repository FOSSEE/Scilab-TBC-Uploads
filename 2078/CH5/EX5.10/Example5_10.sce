//Exa 5.10
clc;
clear;
close;
//Given data :
l=200;//km
P=50;//MVA
VRL=132*10^3;//Volt
f=50;//Hz
R=l*0.15;//ohm
X=l*0.50;//ohm
Y=l*2*10^-6;//mho
pf=0.85;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
VR=VRL/sqrt(3);//Volt
IR=P*10^6/(sqrt(3)*VRL);//A
Z=R+%i*X;//ohm
IR=IR*(cos_fi_r-%i*sin_fi_r);//A
Vdash=VR+1/2*IR*Z;//Volt
IC=Vdash*%i*Y;//A
IS=IR+IC;//A
disp("Sending end current(A), magnitude is "+string(abs(IS))+" and angle in degree is "+string(atand(imag(IS),real(IS))));
VS=Vdash+1/2*IS*Z;//Volt
VSL=abs(VS)*sqrt(3);//Volt
disp(VSL/1000,"Sending end line voltage(kV) :");
Reg=(VSL-VRL)/VRL*100;//%
disp(Reg,"Regulation(%) :  ");
fi_s=atand(imag(VS),real(VS))-atand(imag(IS),real(IS));//
cos_fi_s=cosd(fi_s);//sending end pf
Eta_T=sqrt(3)*VRL*abs(IR)*cos_fi_r/(sqrt(3)*VSL*abs(IS)*cos_fi_s)*100;//%
disp(Eta_T,"Transmission Efficiency(%) : ");
//Ans is wrong in the book.Angle of VS is calculated wrong leads to wrong answers.
