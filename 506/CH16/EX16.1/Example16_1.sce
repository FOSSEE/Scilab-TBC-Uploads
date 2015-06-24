clear;
clc;

//Caption:Fourth Order Butterworth Filter
//Given Data
fo=1;//Cutoff Frequency in Hz
//For n = 4
k1=0.765;
k2=1.848;

Av1 = 3-k1;
Av2 = 3-k2;
disp('For a fourth order Buttworth filter we cacade 2 second order Buttworth filter with parameters R1 R2 R1d R2d R C');
//we arbitrarily choose
R1=10;//in K
disp('K',R1,'R1=');
//Av1=(R1+R1d)/R1
R1d=(Av1*R1)-R1;
disp(R1d,'R1d = ');

R2 = 10;//in K
disp('K',R2,'R2=');
R2d=(Av2*R2)-R2;
disp(R2d,'R2d = ');

//To satisfy fo = 1/(2*%pi*r*c) = 1kHz
R=1;//in K
C = 1/(2*%pi*R*fo);
disp('K',R,'R=');
disp('microF',C,'C = ');
