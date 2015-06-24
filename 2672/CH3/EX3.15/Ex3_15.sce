//Example 3_15
clc;
clear;
close;
format('v',5);
//given data :
f=50;///Hz
V=160+%i*170;//V
I=12-%i*5;//A
Z=V/I;//ohm
disp(Z,"Impedence Z(ohm)");
fi=atand(imag(Z)/real(Z));//degree
pf=cosd(fi);//Power Factor
disp(pf,"Power Factor(lagging)");
P=abs(V)*abs(I)*pf;//W
disp(P,"Power Consumed(W)");
XL=imag(Z);//ohm
L=XL/2/%pi/f*1000;//mH
disp(L,"Inductance L(mH)");
//Answer is not accurate in the book.
