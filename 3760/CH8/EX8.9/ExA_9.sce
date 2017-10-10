clc;
// After deriving the expression
a=0.1; // side of square coil
N=100; // number of turns
n=1000; // speed of rotation on rpm
B=1; // flux density of a uniform magnetic field
disp('case a'); 
theta=90; // angle of coil with the field
w=(2*%pi*n)/60; // angular speed of coil in rad/s
e=N*B*a^2*w*cos(theta*(%pi/180));
printf('Emf induced in coil is %f V\n',e); 
disp('case b'); 
theta=30; // angle of coil with the field
w=(2*%pi*n)/60; // angular speed of coil in rad/s
e=N*B*a^2*w*cos(theta*(%pi/180));
printf('Emf induced in coil is %f V\n',e); 
disp('case c'); 
theta=0; // angle of coil with the field
w=(2*%pi*n)/60; // angular speed of coil in rad/s
e=N*B*a^2*w*cos(theta*(%pi/180));
printf('Emf induced in coil is %f V\n',e); 
