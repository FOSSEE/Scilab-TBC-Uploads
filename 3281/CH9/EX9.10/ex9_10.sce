//Page Number: 486
//Example 9.10
clc;
//Given
vd=2D+5; //m/s
L=10D-6; //m
Ec=3.2D+5; //V/m

//Natural frequency
f=vd/L;
disp('GHz',f/10^9,'Natural frequency:');

//Critical voltage
Vc=Ec*L;
disp('V',Vc,'Critical voltage:');
