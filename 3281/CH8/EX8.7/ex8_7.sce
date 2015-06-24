//Page Number: 428
//Example 8.7
clc;
//Given
MQ=10;
r=10;

x=(MQ*MQ)/r;

//Gain
Ap=(r*x)/((1+sqrt(1+x))^2);
Apdb=10*log10(Ap);
disp('dB',Apdb,'Gain:');
