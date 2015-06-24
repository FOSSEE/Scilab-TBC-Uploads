//Example 3_14
clc;
clear;
close;
format('v',5);
//given data :
V=230;//V
f=50;//Hz
V1=120*expm(%i*30*%pi/180);//V
Z1=15*expm(%i*40*%pi/180);//ohm
V2=V-V1;//V
I=V1/Z1;//A
Z2=V2/I;//ohm
R=real(Z2);//ohm
XC=imag(Z2);//ohm
C=-1/2/%pi/f/XC*10^6;//micro F
disp(Z2,"Value of Z2(ohm) : ");
disp(R,"Resistance(ohm)");
format('v',7);
disp(C,"Capacitance(micro F)");
//Answer is not accurate in the book.
