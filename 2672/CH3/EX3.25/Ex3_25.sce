//Example 3_25
clc;
clear;
close;
format('v',6);
//given data :
R1=12;//ohm
L=50;//mH
R2=50;//ohm
C=50;//micro F
V=200*expm(%i*30*%pi/180);//V
f=50;//Hz
XL=2*%pi*f*L/1000;//ohm
XC=1/2/%pi/f/(C*10^-6);//ohm
Z1=R1+%i*XL;//ohm
Z2=R2+%i*XC;//ohm
I1=V/Z1;//A
I2=V/Z2;//A
I=I1+I2;//A
Imag=abs(I);//A
Iang=atand(imag(I)/real(I));//degree
disp(Iang,Imag,"Total current drawn, magnitude(A) & Angle(degree) are");
pf=cosd(Iang);//Power Factor(lagging)
fi=acosd(pf);//degree
disp(pf,"Power Factor(lagging)");
P=abs(V)*Imag*pf;//W
P=P/1000;//kW
disp(P,"Power Consumed(kW)");
S=abs(V)*Imag*sind(fi);//VARs
S=S/1000;//kVARs
disp(S,"Reactive Power (kVARs)");
Pa=abs(V)*Imag/1000;//kVA
disp(Pa,"Apparent Power(kVA)");
//Answer is not accurate in the book.

