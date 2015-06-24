//Example 3_41
clc;
clear;
close;
format('v',6);
//given data :
R=5;//ohm
XL=10;//ohm
V=230;//V
f=50;//Hz
Z=R+%i*XL;//ohm
IL=V/Z;//A
fi_L=atand(imag(IL)/real(IL));//degree
IC=abs(IL)*sind(fi_L);//A
XC=-V/IC;//ohm
C=1/2/%pi/f/XC*10^6;//micro F
disp(C,"Value of capacitor(micro F)");
I=abs(IL)*cosd(fi_L);//A
format('v',3);
disp(I,"Magnitude of in-phase current(A)");
//Answer is not accurate in the book.
