//Example 3_28
clc;
clear;
close;
format('v',5);
//given data :
V=230;//V
f=50;//Hz
R1=10;//ohm
L1=0.0636;//H
R2=8;//ohm
C=398;//micro F
R3=6;//ohm
L2=0.0319;//H
Z1=R1+%i*2*%pi*f*L1;//ohm
Z2=R2-%i/2/%pi/f/(C*10^-6);//ohm
Z3=R3+%i*2*%pi*f*L2;//ohm
Z=Z1*Z2/(Z1+Z2)+Z3;//ohm
I=V/Z;//A
Imag=abs(I);//A
Iang=atand(imag(I)/real(I));//degree
disp(Iang,Imag,"Current, magnitude(A) & Angle(degree) are");
disp(Imag,"Total Current(A)");
pf=cosd(Iang);//Power Factor(lagging)
fi=acosd(pf);//degree
disp(pf,"Power Factor(lagging)");
//Answer is not accurate in the book.

