//Exa 6.5
clc;
clear;
close;
format('v',8);
//Given data :
A=0.92*expm(%i*5.3*%pi/180);//Auxiliary constant
D=A;//Auxiliary constant
B=65.3*expm(%i*81*%pi/180);//Auxiliary constant
ZT=100*expm(%i*70*%pi/180);//ohm
YT=0.0002*expm(%i*-75*%pi/180);//S
C=(A*D-1)/B;//Auxiliary constant
A0=A*(1+2*YT*ZT)+B*(YT)+C*ZT*(1+YT*ZT);//constant
B0=2*A*ZT+B+C*ZT^2;//ohm//constant
C0=2*A*YT*(1+YT*ZT)+B*YT^2+C*(1+YT*ZT)^2;//mho or S//constant
D0=A0;//constant
disp("Constant A0, magnitude is "+string(abs(A0))+" and angle in degree is "+string(atand(imag(A0),real(A0))));
disp("Constant B0(ohm), magnitude is "+string(abs(B0))+" and angle in degree is "+string(atand(imag(B0),real(B0))));
disp("Constant C0(S), magnitude is "+string(abs(C0))+" and angle in degree is "+string(atand(imag(C0),real(C0))));
disp("Constant D0, magnitude is "+string(abs(D0))+" and angle in degree is "+string(atand(imag(D0),real(D0))));
