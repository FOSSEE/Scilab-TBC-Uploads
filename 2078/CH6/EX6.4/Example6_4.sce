//Exa 6.4
clc;
clear;
close;
format('v',8);
//Given data :
A=0.98*expm(%i*2*%pi/180);//Auxiliary constant
D=A;//Auxiliary constant
B=28*expm(%i*69*%pi/180);//Auxiliary constant
Zse=12*expm(%i*80*%pi/180);//ohm
C=(A*D-1)/B;//Auxiliary constant
A0=A+C*Zse;//constant
B0=B+2*A*Zse+C*Zse^2;//ohm//constant
C0=C;//mho or S//constant
D0=A0;//constant
disp("Constant A0, magnitude is "+string(abs(A0))+" and angle in degree is "+string(atand(imag(A0),real(A0))));
disp("Constant B0(ohm), magnitude is "+string(abs(B0))+" and angle in degree is "+string(atand(imag(B0),real(B0))));
disp("Constant C0(S), magnitude is "+string(abs(C0))+" and angle in degree is "+string(atand(imag(C0),real(C0))));
disp("Constant D0, magnitude is "+string(abs(D0))+" and angle in degree is "+string(atand(imag(D0),real(D0))));
