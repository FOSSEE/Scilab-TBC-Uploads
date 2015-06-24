//Page Number: 92
//Example 2.3
clc;
//Given,

c=3D+8; //m/s
a=4; //cm
b=2; //cm
f=10D+9; //Hz
m=1; 
n=1;


//Cutoff wavelength
lamc=2/sqrt((m/a)^2+(n/b)^2);
disp('cm',lamc,'Cut-off wavelength:');

//Wave impedance
lam=c/f;//m
lam=lam*100;//cm
eeta=120*%pi;
z0=eeta*sqrt(1-(lam/lamc)^2);
disp('ohm',z0,'Wave impedance:');
