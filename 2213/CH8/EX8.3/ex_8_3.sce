//Example 8.3: Motor speed and current drawn
clc;
clear;
close;
//given data :
N1=640;// in rpm
I1=15;// in A
I2=sqrt((2)*sqrt(2)*I1^2);
N2=round((2*I1*N1)/I2);
disp(I2,"Current drawn,I2(A) = ")
disp(N2,"Motor speed,N2(rpm) = ")
