//Example 3_35
clc;
clear;
close;
format('v',6);
//given data :
V=230;///V
f=50;//Hz
Im=1.5;//A//Maximum current
VC=600;//V
VL=600;//V
R=V/Im;//ohm
XL=VL/Im;//ohm
L=XL/2/%pi/f;//H
XC=XL;//ohm
C=1/2/%pi/f/XC;//F
disp(R,"Resistance(ohm)");
format('v',5);
disp(L,"Inductance(H)");
format('v',11);
disp(C,"Capacitance(F)");
//Answer is not accurate in the book.
