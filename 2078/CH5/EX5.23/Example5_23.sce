//Exa 5.23
clc;
clear;
close;
//Given data :
A=0.936+%i*0.016;//parameter of 3-phase line
D=A;//parameter of 3-phase line
B=33.5+%i*138;//parameter of 3-phase line
C=(-0.9280+%i*901.223)*10^-6;//parameter of 3-phase line
VRL=200*10^3;//Volt
VR=VRL/sqrt(3);//Volt
P=40*10^6;//W
pf=0.86;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
IR=P/sqrt(3)/VRL/pf;//A
fi=acosd(pf);//degree
IR=IR*expm(%i*-fi*%pi/180);
VS=A*VR+B*IR;//Volt
VSL=sqrt(3)*abs(VS);//Volt
disp(VSL/1000,"Sending end Line voltage(kV) : ");
IS=C*VR+D*IR;//A
disp("Sending end current(A), magnitude is "+string(abs(IS))+" and angle in degree is "+string(atand(imag(IS),real(IS))));
fi_s=atand(imag(IS),real(IS))-atand(imag(VS),real(VS));//degree
disp(cosd(fi_s),fi_s,"Sending end phase angle(degree) & power factor(leading): ");
Ps=sqrt(3)*abs(VSL)*abs(IS)*cosd(fi_s)*10^-6;//MW
disp(Ps,"Sending end power(MW) : ");
Vreg=(VSL-VRL)*100/VRL;//%
disp(Vreg,"Voltage regulation in % : ");
