//Example 3_23
clc;
clear;
close;
format('v',6);
//given data :
R1=5;//ohm
L1=150;//mH
R2=50;//ohm
L2=15;//mH
V=230;//V
f=50;//Hz
Z1=R1+%i*2*%pi*f*L1/1000;//ohm
Z2=R2+%i*2*%pi*f*L2/1000;//ohm
I1=V/Z1;//A
I2=V/Z2;//A
I=I1+I2;//A
Imag=abs(I);//A
Iang=atand(imag(I)/real(I));//degree
disp(Iang,Imag,"Total current drawn, magnitude(A) & Angle(degree) are");
pf=cosd(Iang);//Power Factor(lagging)
format('v',4);
disp(pf,"Power Factor(lagging)");
P=V*Imag*pf;//W
format('v',5);
disp(P,"Power Consumed(W)");
//Answer is not accurate in the book.
