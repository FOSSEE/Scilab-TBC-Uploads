//Exa 5.24
clc;
clear;
close;
//Given data :
A1=0.98*expm(%i*2*%pi/180);//parameter of 3-phase line
D1=A1;//parameter of 3-phase line
B1=28*expm(%i*69*%pi/180);//parameter of 3-phase line
C1=0.0002*expm(%i*88*%pi/180);//parameter of 3-phase line
A2=0.95*expm(%i*3*%pi/180);//parameter of 3-phase line
D2=A2;//parameter of 3-phase line
B2=40*expm(%i*85*%pi/180);//parameter of 3-phase line
C2=0.0004*expm(%i*90*%pi/180);//parameter of 3-phase line
VRL=110*10^3;//Volt
VR=VRL/sqrt(3);//Volt
IR=200;//A
pf=0.95;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
fi=acosd(pf);//degree
A=A1*A2+B1*C2;//generalized parameter of 2 line
B=A1*B2+B1*D2;//generalized parameter of 2 line
C=C1*A2+D1*C2;//generalized parameter of 2 line
D=C1*B2+D1*D2;//generalized parameter of 2 line
IR=IR*expm(%i*-fi*%pi/180);
VS=A*VR+B*IR;//Volt
VSL=sqrt(3)*abs(VS);//Volt
disp(VSL/1000,"Sending end Line voltage(kV) : ");
IS=C*VR+D*IR;//A
disp("Sending end current(A), magnitude is "+string(abs(IS))+" and angle in degree is "+string(atand(imag(IS),real(IS))));
//Answer for VSL is wrong in the book.
