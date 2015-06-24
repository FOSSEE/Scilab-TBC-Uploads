//Example 3_36
clc;
clear;
close;
format('v',6);
//given data :
f=100;//Hz
C=100;//micro F
Cdash=200;//micro F//When current is half of maximum
L=1/(2*%pi*f)^2/(C*10^-6);//H
disp(L,"Inductance(H)");
XL=2*%pi*f*L;//ohm
XC=1/2/%pi/f/(Cdash*10^-6);//ohm
//at I=Im/2  Z will be 2*R
//Im=V/R and I=V/Z=V/sqrt(R^2+(XL-XC)^2)
R=(XL-XC)/sqrt(3);//ohm
format('v',5);
disp(R,"Resistance(ohm)");
//Answer is not accurate in the book.
