//Example 3_12
clc;
clear;
close;
format('v',6);
//given data :
V=230;//V
f=50;//Hz
R=5;//ohm
L=30;//mH
XL=2*%pi*f*L*10^-3;//ohm
Z=R+%i*XL;//ohm
I=V/Z;//A
Imag=abs(I);//A
disp(Imag,"Magnitude of current(A) : ");
fi=atand(imag(I),real(I));//degree
format('v',5);
pf=cosd(fi);//Power Factor
disp(pf,"Power Factor(lagging)");
P=V*Imag*cosd(fi);//W
disp(P,"Power Consumed(W) : " );
//Answer is not accurate in the book.
