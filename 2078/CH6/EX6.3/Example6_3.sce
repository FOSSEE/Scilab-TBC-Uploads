//Exa 6.3
clc;
clear;
close;
format('v',8);
//Given data :
VRL=220;//kV
VR=VRL/sqrt(3);//V
P=10*10^6;//VA
Z=1+%i*8;//ohm(in %)
Zse=Z/100*VRL^2/100;//ohm/phase
A=0.9*expm(%i*0.6*%pi/180);//Auxiliary constant
D=A;//Auxiliary constant
B=153.2*expm(%i*84.6*%pi/180);//Auxiliary constant
C=0.0012*expm(%i*90*%pi/180);//Auxiliary constant
A0=A+C*Zse;//constant
B0=B+D*Zse;//ohm//constant
C0=C;//mho or S//constant
D0=A;//constant
disp("Constant A0, magnitude is "+string(abs(A0))+" and angle in degree is "+string(atand(imag(A0),real(A0))));
disp("Constant B0(ohm), magnitude is "+string(abs(B0))+" and angle in degree is "+string(atand(imag(B0),real(B0))));
disp("Constant C0(S), magnitude is "+string(abs(C0))+" and angle in degree is "+string(atand(imag(C0),real(C0))));
disp("Constant D0, magnitude is "+string(abs(D0))+" and angle in degree is "+string(atand(imag(D0),real(D0))));
