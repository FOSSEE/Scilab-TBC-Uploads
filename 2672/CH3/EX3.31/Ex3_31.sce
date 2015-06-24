//Example 3_31
clc;
clear;
close;
format('v',5);
//given data :
I2=10;//A
f=50;//Hz
R1=5;//ohm
L1=0.0191;//H
R2=7;//ohm
C2=398;//micro F
R3=8;//ohm
L3=0.0318;//H
Z1=R1+%i*2*%pi*f*L1;//ohm
Z2=R2-%i/2/%pi/f/(C2*10^-6);//ohm
Z3=R3+%i*2*%pi*f*L3;//ohm
VAC=I2*Z2;//V
I1=VAC/Z1;//A
I=I1+I2;//A
VCB=I*Z3;//V
VAB=VAC+VCB;//V
VABmag=abs(VAB);//A
VABang=atand(imag(VAB)/real(VAB));//degree
disp(VABang,VABmag,"Voltage AB, magnitude(V) & Angle(degree) are");
//Answer is not accurate in the book.
