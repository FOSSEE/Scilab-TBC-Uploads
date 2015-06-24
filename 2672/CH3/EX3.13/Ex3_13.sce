//Example 3_13
clc;
clear;
close;
format('v',6);
//given data :
V=230;//V
f=50;//Hz
R=15;//ohm
L=0.15;//H
C=100;//micro F
XL=2*%pi*f*L;//ohm
XC=1/2/%pi/f/(C*10^-6);//ohm
Z=R+%i*(XL-XC);//ohm
I=V/Z;//A
Imag=abs(I);//A
fi=atand(imag(I),real(I));//degree
disp(Imag,"Magnitude of current(A) : ");
disp(fi,"Angle(lagging) of current(degree) : ");
format('v',7);
pf=cosd(fi);//Power Factor
disp(pf,"Power Factor(lagging)");
P=V*Imag*cosd(fi);//W
disp(P,"Power Consumed(W) : " );
//Answer is not accurate in the book.
