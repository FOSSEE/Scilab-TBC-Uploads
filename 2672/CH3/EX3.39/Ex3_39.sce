//Example 3_39
clc;
clear;
close;
format('v',10);
//given data :
R=2.5;//ohm
XL=25;//ohm
V=200;//V
f0=50;//Hz
XC=XL;//ohm
C=1/(2*%pi*f0*XC);//F
disp(C,"For maximum current, Value of C(F)");
//At resonance Z=R
pf=1;//power factor
disp(pf,"Power Factor ");
Z=R;//ohm
disp(Z,"Impedence(ohm)");
Im=V/R;//A
disp(Im,"Current(A)");
//Answer is not accurate in the book.
