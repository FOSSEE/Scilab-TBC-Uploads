// example:-5.6,page no.-232.
//program to find the ABCD parameter of a two-port network.
syms A B C D V1 V2 I1 I2 Z;
//A=V1/V2;  // for i2=0;
A=1;
B=V1/(V1/Z);
C=0;
D=I1/I1;
ABCD=[A B;C D];
// result
disp(ABCD,'abcd parameter')