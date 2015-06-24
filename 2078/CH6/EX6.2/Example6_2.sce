//Exa 6.2
clc;
clear;
close;
format('v',8);
//Given data :
Z=200*expm(%i*80*%pi/180);//ohm
Y=0.0013*expm(%i*90*%pi/180);//S/phase
P=80*10^6;//W
pf=0.8;//power factor
VRL=220*1000;//V
VR=VRL/sqrt(3);//V
IR=P/sqrt(3)/VRL/pf;//A
fi=acosd(pf);//degree
IR=IR*expm(%i*-fi*%pi/180);//A
YZ=Y*Z;//ohm
Y2Z2=YZ^2;//ohm
Y3Z3=YZ^3;//ohm
A=1+YZ/2+Y2Z2/24+Y3Z3/720;//ohm
D=A;//oh,m
B=Z*(1+YZ/6+Y2Z2/120+Y3Z3/5040);//ohm
C=Y*(1+YZ/6+Y2Z2/120+Y3Z3/5040);//mho
VS=A*VR+B*IR;//V
VSL=sqrt(3)*abs(VS);//V
disp(VSL/1000,"Sending end line voltage in kV : ");
IS=C*VR+D*IR;//
disp("Sending end current in A, magnitude is "+string(abs(IS))+" and angle in degree is "+string(atand(imag(IS),real(IS))));
