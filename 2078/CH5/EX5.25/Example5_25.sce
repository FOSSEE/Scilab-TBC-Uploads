//Exa 5.25
clc;
clear;
close;
//Given data :
A1=0.98*expm(%i*1*%pi/180);//parameter of 3-phase line
D1=A1;//parameter of 3-phase line
B1=100*expm(%i*75*%pi/180);//parameter of 3-phase line
C1=0.0005*expm(%i*90*%pi/180);//parameter of 3-phase line
A2=0.98*expm(%i*1*%pi/180);//parameter of 3-phase line
D2=A2;//parameter of 3-phase line
B2=100*expm(%i*75*%pi/180);//parameter of 3-phase line
C2=0.0005*expm(%i*90*%pi/180);//parameter of 3-phase line
P=100*10^6;//W
VRL=132*10^3;//Volt
VR=VRL/sqrt(3);//Volt
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
fi=acosd(pf);//degree
A=(A1*B2+A2*B1)/(B1+B2);//generalized parameter of 2 line
B=B1*B2/(B1+B2);//generalized parameter of 2 line
C=C1+C2-(A1-A2)*(D1-D2)/(B1+B2);//generalized parameter of 2 line
D=(B1*D2+B2*D1)/(B1+B2);//generalized parameter of 2 line
disp("Generalised constants ot two lines combined are : ");
disp("Parameter A, magnitude is "+string(abs(A))+" and angle in degree is "+string(atand(imag(A),real(A))));
disp("Parameter B, magnitude is "+string(abs(B))+" and angle in degree is "+string(atand(imag(B),real(B))));
disp("Parameter C, magnitude is "+string(abs(C))+" and angle in degree is "+string(atand(imag(C),real(C))));
disp("Parameter D, magnitude is "+string(abs(D))+" and angle in degree is "+string(atand(imag(D),real(D))));
IR=P/sqrt(3)/VRL/pf;//A
IR=IR*expm(%i*-fi*%pi/180);
VS=A*VR+B*IR;//Volt
VSL=sqrt(3)*abs(VS);//Volt
IS=C*VR+D*IR;//A
fi_s=atand(imag(VS),real(VS))-atand(imag(IS),real(IS));
disp(cosd(fi_s),"Sending end power factor(lagging) : ");
