//Example 2.33: Flux, actual ratio and phase angle
clc;
clear;
close;
//given data :
I=5;// in A
r1=4;// in ohm
r2=0.2;// in ohm
Es=I*(r1+r2);
Ts=160;// in turns
F=50;// in Hz
fi=Es*10^3/(4.44*Ts*F);
disp(fi,"(i). Flux in the core,(mWb) = ")
I0=6;// in A
theta1=30;// in degree
Ie=I0*cosd(theta1);// in A
Im=I0*sind(theta1);// in A
del=0;
K=Ts+(((Ie*cosd(del))+(Im*sind(del)))/I);
disp(K,"(ii). The actual ratio,K = ")
theta=(180/%pi)*(((Im*cosd(del))-(Ie*sind(del)))/(Ts*I));
disp(theta,"(iii). The phase angle,(degree)  = ")
