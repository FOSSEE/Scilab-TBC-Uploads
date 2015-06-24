//Page Number: 23
//Example 1.10
clc;
//Given
ZL=15+(%i*20); //ohms
Z0=50; //ohm

//Normalized load impedance
z=ZL/Z0;
disp(z,'Normalized load impedance:');

//From chart
T=0.6;
disp(T,'Reflection coefficient:');

//VSWR
p=4;
disp(p,'VSWR:');
