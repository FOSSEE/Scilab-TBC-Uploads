//Example 3_42
clc;
clear;
close;
format('v',7);
//given data :
R=4;//ohm
L=20;//mH
V=230;//V
f=50;//Hz
omega=2*%pi*f;//rad/s
ZL=R+%i*omega*L/1000;//ohm
IL=V/ZL;//A
fi_L=atand(imag(IL)/real(IL));//degree
IC=abs(IL)*sind(fi_L);//A
XC=-V/IC;//ohm
C=1/2/%pi/f/XC*10^6;//micro F
disp(C,"Value of capacitor(micro F)");
I0=abs(IL)*cosd(fi_L);//A
format('v',5);
disp(I0,"Magnitude of in-phase current(A)");
//Answer is not accurate in the book.
