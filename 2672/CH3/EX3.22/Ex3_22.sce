//Example 3_22
clc;
clear;
close;
format('v',6);
//given data :
L=100;//mH
R=15;//ohm
V=230;//V
f=50;//Hz
XL=2*%pi*f*L/1000;//ohm
IR=V/R;//A
disp(IR,"Branch Current IR(A)");
IL=V/XL;//A
format('v',5);
disp(IL,"Branch Current IL(A)");
I=sqrt(IR^2+IL^2);//A
disp(I,"Line Current I(A)");
pf=IR/I;//Power factor(lagging)
disp(pf,"Power Factor(lagging)");
fi=acosd(pf);//degree
P=V*I*cosd(fi);//W
disp(P,"Power Consumed(W)");
//Answer is not accurate in the book.
