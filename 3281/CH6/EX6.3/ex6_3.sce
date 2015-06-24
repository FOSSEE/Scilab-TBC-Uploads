//Page Number: 332
//Example 6.3
clc;
//Given
c=3D+8; //m/s
d=2D-3; //m
p=50D+2; //turns per m
e=1.6D-19; //J
m=9.1D-31;

// Axial phase velocity
vp=c/(%pi*p*d);
disp('m/s',vp,'Axial phase velocity:');

//Anode voltage
V0=(m*vp*vp)/(2*e);
disp('V',V0,'Anode voltage:');
