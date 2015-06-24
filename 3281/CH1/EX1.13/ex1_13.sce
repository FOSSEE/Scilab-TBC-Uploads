//Page Number: 27
//Example 1.13
clc;
//Given
p=3;
m1=54; //cm
m2=204; //cm

//Point A
disp('Point A');
lam=4*(m2-m1);
dA=0.083*lam;
L=m1-dA;
disp('cm',L,'Location of stub:');
IA=0.114*lam;
disp('cm',IA,'Length:');

//Point B
disp('Point B');
dB=0.083*lam;
IB=0.386*lam;
Lb=dB+m1;
disp('cm',Lb,'Location of stub:');
