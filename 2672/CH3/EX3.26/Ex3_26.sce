//Example 3_26
clc;
clear;
close;
format('v',6);
//given data :
V=230;//V
f=50;//Hz
Z1=12*expm(%i*30*%pi/180);//ohm
Z2=8*expm(%i*-30*%pi/180);//ohm
Z3=10*expm(%i*60*%pi/180);//ohm
Y1=1/Z1;//mho
Y2=1/Z2;//mhob
Y3=1/Z3;//mho
Y=Y1+Y2+Y3;//mho
Ymag=abs(Y);//mho
Yang=atand(imag(Y)/real(Y));//degree
disp(Yang,Ymag,"Total admittance, magnitude(mho) & Angle(degree) are");
Z=1/Y;//ohm
Zmag=abs(Z);//ohm
Zang=atand(imag(Z)/real(Z));//degree
disp(Zang,Zmag,"Equivallent Impedance, magnitude(ohm) & Angle(degree) are");
I=V/Z;//A
Imag=abs(I);//A
Iang=atand(imag(I)/real(I));//degree
disp(Iang,Imag,"Total current, magnitude(A) & Angle(degree) are");
pf=cosd(Iang);//Power Factor(lagging)
fi=acosd(pf);//degree
disp(pf,"Power Factor(lagging)");
format('v',7);
P=abs(V)*Imag*pf;//W
P=P/1000;//kW
disp(P,"Power Consumed(kW)");
//Answer is not accurate in the book.

