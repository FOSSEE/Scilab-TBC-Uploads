//Page Number: 6.16
//Example 6.7
clc;
//Given
//Pdot=2*Pdash and Pdot+Pdash=1
//Therfore, on solving using linear equations
a=[1 -2;1 1];
c=[0;1];
b=inv(a)*c;
Pdash=b(1,1);
Pdot=b(2,1);
disp(Pdot,'Pdot:');
disp(Pdash,'Pdash:')
