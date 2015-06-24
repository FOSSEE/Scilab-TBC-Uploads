//Page Number: 487
//Example 9.13
clc;
//Given
e=1.6D-19;
n1=1D+16; //m-3
mu1=8000D-4; //m2/Vs
nu=1D+14; //m-3
muu=180D-4; //m2/Vs

///Conductivity
C=e*((n1*mu1)+(nu*muu));
disp('m mho',C*1000,'Conductivity:');

