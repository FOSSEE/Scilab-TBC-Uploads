//Page Number: 16
//Example 1.7
clc;
//Given
c=3D+8; //m/s
R=2.25;//ohm
L=1D-9;//H/m
C=1D-12;//F/m
f=0.5D+9;//hz
G=0;
w=2*%pi*f;//rad/sec

//Characterstic impedance
z0=sqrt((R+(%i*w*L))/(G+(%i*w*C))); //ohm
disp('ohm',z0,'Characterstic impedance:');

//Propagation constant
gam=sqrt((R+(%i*w*L))*(G+(%i*w*C)));
disp(gam,'Propagation constant:');
