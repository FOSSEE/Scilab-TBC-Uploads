//Page Number: 487
//Example 9.11
clc;
//Given
n=0.08;
A=3D-8; //m2
n0=1D+21; //m-3
e=1.6D-19;
vd=1.5D+5; //m/s
M=3.2
E=350D+3; //V
L=12D-6; //m

//Power output
Pout=n*A*n0*e*vd*M*L*E;
disp('mW',Pout*1000,'Power output:');
