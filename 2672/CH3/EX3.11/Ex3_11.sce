//Example 3_11
clc;
clear;
close;
format('v',6);
//given data :
V=100;//V
f=50;//Hz
R1=8;//ohm
X1=6;//ohm
R2=6;//ohm
X2=-8;//ohm
Z1=R1+%i*X1;//ohm
Z2=R2+%i*X2;//ohm
I1=V/Z1;//A
I1mag=abs(I1);//A
I1ang=atand(imag(I1),real(I1));//degree
disp(I1ang,I1mag,"Branch Current I1, magnitude(A) & angle(degree) are: ");
I2=V/Z2;//A
I2mag=abs(I2);//A
I2ang=atand(imag(I2),real(I2));//degree
disp(I2ang,I2mag,"Branch Current I2, magnitude(A) & angle(degree) are: ");
I=I1+I2;//A
Imag=abs(I);//A
Iang=atand(imag(I),real(I));//degree
disp(Iang,Imag,"Total Current I, magnitude(A) & angle(degree) are: ");
fi=atand(imag(I),real(I));//degree
pf=cosd(fi);//Power Factor lagging
disp(pf,"Total Power Factor(lagging)");
P=V*Imag*cosd(fi);//W
disp(P,"Active Power(W)");
S=V*Imag*sind(fi);//VAR
disp(S,"Reactive Power(VAR)");
//Answer is not accurate in the book.
