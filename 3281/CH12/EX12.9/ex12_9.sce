//Page Number: 653
//Example 12.9
clc;
//Given
p=1.5;
IsL=1; //dB
InL=30; //dB

S21=10^(-IsL/20);

//Assuming tgree ports to be identical
S32=S21;
S13=S21;

//Isolations are also the same
S31=10^(-InL/20);
S23=S31;
S12=S31;

//Refelction coefficients are also the same
T=(p-1)/(p+1);
S11=T;
S22=T;
S33=T;

S=[S11 S12 S13;S21 S22 S23;S31 S32 S33];
disp(S,'Matrix is:');

