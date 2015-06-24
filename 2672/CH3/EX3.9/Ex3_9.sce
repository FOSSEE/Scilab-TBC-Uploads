//Example 3_9
clc;
clear;
close;
format('v',5);
//given data :
V=230;//V
f=50;//Hz
R1=14;//ohm
L1=16;//mH
R2=18;//ohm
L2=32;//mH
XL1=2*%pi*f*L1*10^-3;//ohm
XL2=2*%pi*f*L2*10^-3;//ohm
Z1mag=sqrt(R1^2+XL1^2);//ohm
Z2mag=sqrt(R2^2+XL2^2);//ohm
fi1=atand(XL1/R1);//radian
fi2=atand(XL2/R2);//radian
Z1=Z1mag*expm(%i*fi1*%pi/180);//ohm
Z2=Z2mag*expm(%i*fi2*%pi/180);//ohm
Y1=1/Z1;//mho
Y2=1/Z2;//mho
I1=V*Y1;//A
I1mag=abs(I1);//A
I1ang=atand(imag(I1),real(I1));//degree
disp(I1ang,I1mag,"Branch Current I1, magnitude(A) & angle(degree) are: ");
I2=V*Y2;//A
I2mag=abs(I2);//A
I2ang=atand(imag(I2),real(I2));//degree
disp(I2ang,I2mag,"Branch Current I2, magnitude(A) & angle(degree) are: ");
I_cosfi=I1mag*cosd(fi1)+I2mag*cosd(fi1);
I_sinfi=I1mag*sind(fi1)+I2mag*sind(fi1);
tanfi=I_sinfi/I_cosfi;
fi=atand(tanfi);//degree
pf=cosd(fi);//Power Factor lagging
disp(pf,"Total Power Factor(lagging)");
I=sqrt(I_sinfi^2+I_cosfi^2);//A
disp(fi,-I,"Line Current I, magnitude(A) & angle(degree) are: ");
//Answer is not accurate in the book.
