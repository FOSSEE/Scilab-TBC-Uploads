//Exa 5.20
clc;
clear;
close;
//Given data :
Z=200*expm(%i*%pi/180*80);//ohm
Y=0.0013*expm(%i*%pi/180*90);//mho/phase
P=80*10^6;//W
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
VRL=220*10^3;//Volt
VR=VRL/sqrt(3);//Volt
f=50;//Hz
IR=P/(sqrt(3)*VRL*pf);//A
IR=IR*(cos_fi_r-%i*sin_fi_r);//A
A=1+1/2*Y*Z;//parameter of 3-phase line
D=A;//parameter of 3-phase line
B=Z*(1+1/4*Y*Z);//parameter of 3-phase line
C=Y;//parameter of 3-phase line
disp("Parameter A, magnitude is "+string(abs(A))+" and angle in degree is "+string(atand(imag(A),real(A))));
disp("Parameter B, magnitude is "+string(abs(B))+" and angle in degree is "+string(atand(imag(B),real(B))));
disp("Parameter C, magnitude is "+string(abs(C))+" and angle in degree is "+string(atand(imag(C),real(C))));
disp("Parameter D, magnitude is "+string(abs(D))+" and angle in degree is "+string(atand(imag(D),real(D))));
VS=A*VR+B*IR;//Volt
VSL=sqrt(3)*abs(VS);//Volt
disp(VSL/1000,"Sending end Line voltage(kV) : ");
IS=C*VR+D*IR;//A
disp("Sending end current(A), magnitude is "+string(abs(IS))+" and angle in degree is "+string(atand(imag(IS),real(IS))));
fi_s=atand(imag(VS),real(VS))-atand(imag(IS),real(IS));//
cos_fis=cosd(fi_s);//sending end pf
disp(cos_fis,"Sending end power factor(lag) : ");
Pin=sqrt(3)*VSL*abs(IS)*cos_fis*10^-6;//MW
disp(Pin,"Power Input(MW) : ");
Eta=P/(Pin*10^6)*100;//%
disp(Eta,"Transmission Efficiency(%) : ");
