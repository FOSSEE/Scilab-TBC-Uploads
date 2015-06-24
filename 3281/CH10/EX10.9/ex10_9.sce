//Page Number: 560
//Example 10.9
clc;
//Given
Z0=50; //ohm
C=3; //db

//Line impedance
Z01sqr=(1-(10^(C/-10)));
Z01=sqrt(Z0*Z0*Z01sqr);
disp('ohm',Z01,'Z01:');

Z02=Z01/(sqrt(1-(1/sqrt(2))^2));
disp('ohm',round(Z02),'Z02:');
