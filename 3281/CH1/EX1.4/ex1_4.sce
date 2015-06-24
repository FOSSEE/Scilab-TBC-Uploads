//Page Number: 14
//Example 1.4
clc;
//Given
c=3D+8; //m/s
z0=200;//ohm
zl=800;//ohm
f=30D+6;//hz

//Characterstic impedance
z00=sqrt(z0*zl);//ohm
disp('ohm',z00,'Characterstic impedance:');

//Length of line
lam=c/f;//m
l=lam/4;//m
disp('m',l,'Length of line:');
