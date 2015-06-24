//Page Number: 236
//Example 4.18
clc;
//Given
C=10; //dB
D=30; //dB

//Parameters
bet=10^(-C/20);
x=bet/(10^(D/20));
a=sqrt(1-(bet*bet));
//Scattering matrix
//Assuming symmetery
s=[0 a x (bet*%i);a 0 (bet*%i) x;x (bet*%i) 0 a;(bet*%i) x a 0];
disp(s,'Scattering matrix:');
