//Exa 5.21
clc;
clear;
close;
//Given data :
P=50*10^6;//VA
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
A=0.98*expm(%i*%pi/180*3);//parameter of 3-phase line
D=0.98*expm(%i*%pi/180*3);//parameter of 3-phase line
B=110*expm(%i*%pi/180*75);//parameter of 3-phase line
C=0.0005*expm(%i*%pi/180*80);//parameter of 3-phase line
VRL=110*10^3;//Volt
VR=VRL/sqrt(3);//Volt
IR=P/(sqrt(3)*VRL);//A
IR=IR*(cos_fi_r-%i*sin_fi_r);//A
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
Eta=P*pf/(Pin*10^6)*100;//%
disp(Eta,"Transmission Efficiency(%) : ");
