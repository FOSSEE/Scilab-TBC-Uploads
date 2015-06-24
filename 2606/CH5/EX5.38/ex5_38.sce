//Page Number: 5.43
//Example 5.38
clc;
//Given,
fB=75D+3; //Hz
Rb=0.1D+6; //B/s
Tb=1/Rb;
a=(2*fB*Tb)-1;
disp(a,'Roll off factor');
