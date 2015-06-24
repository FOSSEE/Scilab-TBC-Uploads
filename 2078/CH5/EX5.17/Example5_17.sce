//Exa 5.17
clc;
clear;
close;
//Given data :
P=10;//MWatt
pf=0.8;//power factor
VRL=30*10^3;//Volt
R1=5.5;//ohm
XL1=13.5;//ohm
R2=6;//ohm
XL2=11;//ohm
ZA=R1+%i*XL1;//ohm
ZB=R2+%i*XL2;//ohm
S=P*10^3/pf*expm(%i*%pi/180*(-36.52));//kVA
SA=S*ZB/(ZA+ZB);//kVA
disp("Load supply by line A(kVA), magnitude is "+string(abs(SA))+" at pf "+string(cosd(atand(imag(SA),real(SA)))));
SB=S*ZA/(ZA+ZB);//kVA
disp("Load supply by line B(kVA), magnitude is "+string(abs(SB))+" and angle in degree is "+string(cosd(atand(imag(SB),real(SB)))));
PA=abs(SA)*(cosd(atand(imag(SA),real(SA))));//kW
disp(PA,"Power supplied by line A(kW) : ");
PB=abs(SB)*(cosd(atand(imag(SB),real(SB))));//kW
disp(PB,"Power supplied by line B(kW) : ");
//Answer is not accurate in the book.
