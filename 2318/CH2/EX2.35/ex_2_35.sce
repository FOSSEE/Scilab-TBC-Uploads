//Example 2.35: The ratio errror and phase angle error
clc;
clear;
close;
//given data :
I=5;// in A
Kn=1000/I;
n=198;// in turns
L=12.5;//in VA
Zs=L/I^2;
f=50;// assume in Hz
l=1*10^-3;// in H
Re=2*%pi*f*l;// in ohm
del=asind(Re/Zs);
Ie=10;// in A
Im=15;// in A
K=n+(((Ie*cosd(del))+(Im*sind(del)))/I);
Rerror=(Kn-K)*100/K;
disp(Rerror,"The ratio error,(%) = ")
eph=(180/%pi)*(((Im*cosd(del))-(Ie*sind(del)))/(n*I));
disp(eph,"The phase angle,(degree) = ")
