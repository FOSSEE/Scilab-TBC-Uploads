//Example 3_24
clc;
clear;
close;
format('v',6);
//given data :
Z1=10+%i*12;//ohm
Z2=12-%i*10;//ohm
V=230;//V
f=50;//Hz
Z=Z1*Z2/(Z1+Z2);//ohm
I=V/Z;//A
Imag=abs(I);//A
Iang=atand(imag(I)/real(I));//degree
disp(Iang,Imag,"Total current drawn, magnitude(A) & Angle(degree) are");
pf=cosd(Iang);//Power Factor(lagging)
format('v',6);
disp(pf,"Power Factor(lagging)");
P=V*Imag*pf;//W
P=P/1000;//kW
disp(P,"Power Consumed(kW)");
//Answer is not accurate in the book.
