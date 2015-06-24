//Page Number: 4.20
//Example 4.21
clc;
//Given
delf=20D+3; //Hz
fc=200D+3; //Hz
of=96D+6; //hz
//delf=n1*n2 and as only doublers are used, n1*n2 has to be power of 2
//By trail and error, we find
n1=64;
n2=32;
//Output of first Multiplier
o1=n1*fc;
disp('Hz',o1,'Output of first multiplier: ');
i2=of/n2;
flo=o1-i2;
disp('Hz',flo,'fLO');
