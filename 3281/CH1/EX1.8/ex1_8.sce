//Page Number: 20
//Example 1.8
clc;
//Given
c=3D+8; //m/s
f=3D+9; //Hz
ZL=50-(%i*100); //ohms
Z0=50; //ohm
//Wavelength
lam=c/f;
disp('cm',lam*100,'Wavelength:');

//Normalized load impedance
z=ZL/Z0;
disp(z,'Normalized load impedance:');

//From chart
zin=0.45+(%i*1.2);
yin=0.27-(%i*0.73);
ZINN=Z0*zin;
disp('ohm',ZINN,'Line impedance:');
YINN=yin/Z0;
disp('mho',YINN,'Line admittance:');

