//Page Number: 30
//Example 1.15
clc;
//Given
Z0=50; //ohm
ZL=100; //ohms
f=10D+9; //Hz
c=0.159D-12; //F

//Normalized load impedance
z=ZL/Z0;
disp(z,'Normalized load impedance:');

//From chart
zin=0.4+(%i*0.55);
ZINN=Z0*zin;
disp('ohm',ZINN,'Normalized impedance:');
