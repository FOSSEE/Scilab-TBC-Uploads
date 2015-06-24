//Example 3_20
clc;
clear;
close;
format('v',4);
//given data :
VR=20;//V
VL=60;//V
VC=30;//V
V=sqrt(VR^2+(VL-VC)^2);//V
disp(V,"Magnitude of voltage(V)");
format('v',5);
fi=acosd(VR/V);//degree
disp(fi,"Power Factor angle(degree)");
pf=cosd(fi);//Power Factor
disp(pf,"Power Factor");
//Answer is not accurate in the book.
