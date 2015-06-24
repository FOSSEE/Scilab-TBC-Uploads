//Page Number: 429
//Example 8.8
clc;
//Given
Rs=1; //ohm
ws=5D+9; //Hz
M=0.25;
C0=2D-12; //F

//(i) Effective Q
Q=1/(Rs*ws*C0*(1-(M*M)));
disp(Q,'Effective Q:');
