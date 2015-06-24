//Page Number: 488
//Example 9.15
clc;
//Given
L=10D-6; //m
f=10D+9; //Hz
e=1.6D-19;
n0=2D+20; //m3
E=3200D+2; //V/m

//Current density
vd=L*f;
J=n0*e*vd;
disp('A/m sqr',J,'Current density:');

//Negative electron mobility
mu=-vd/E;
disp('cm sqr/Vs',mu*10000,'Negative electron mobility:');

//Answer for Negative electron mobility is 3125 but it is given as 3100

