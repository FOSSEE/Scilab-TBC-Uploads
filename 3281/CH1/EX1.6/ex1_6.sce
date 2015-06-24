//Page Number:
//Example 1.6
clc;
//Given
c=3D+8; //m/s
le=25;//m
zl=40+(%i*30);//ohm
f=10D+6;//hz
cap=40D-12;//F
l=300D-9;//H/m

//Input impedance
z0=sqrt(l/cap);//ohm
zl1=zl/z0;
lam=c/f;//m
bet=(2*%pi*le)/lam;//rad
zin=((zl1*cos(bet))+(%i*sin(bet)))/(cos(bet)+(%i*zl1*sin(bet)));//ohm
disp('ohm',zin,'Input impedance:');

//Reflection coefficient
t=(zl1-1)/(zl1+1);
disp(t,'Reflection coefficient:');
