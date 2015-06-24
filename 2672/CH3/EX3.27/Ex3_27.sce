//Example 3_27
clc;
clear;
close;
format('v',6);
//given data :
V=230;//V
f=50;//Hz
R1=12;//ohm
XL1=12;//ohm
R2=8;//ohm
XL2=16;//ohm
Z1=R1+%i*XL1;//ohm
Z2=R2+%i*XL2;//ohm
Y1=1/Z1;//mho
Y2=1/Z2;//mhob
I1=V*Y1;//A
I1mag=abs(I1);//A
I1ang=atand(imag(I1)/real(I1));//degree
disp(I1ang,I1mag,"current I1, magnitude(A) & Angle(degree) are");
I2=V*Y2;//A
I2mag=abs(I2);//A
I2ang=atand(imag(I2)/real(I2));//degree
disp(I2ang,I2mag,"Current I2, magnitude(A) & Angle(degree) are");
I=I1+I2;//A
Imag=abs(I);//A
Iang=atand(imag(I)/real(I));//degree
disp(Iang,Imag,"Total current, magnitude(A) & Angle(degree) are");
pf=cosd(Iang);//Power Factor(lagging)
fi=acosd(pf);//degree
disp(pf,"Power Factor(lagging)");
P=abs(V)*Imag*pf;//W
P=P/1000;//kW
disp(P,"Power Consumed(kW)");
//Answer is not accurate in the book.

