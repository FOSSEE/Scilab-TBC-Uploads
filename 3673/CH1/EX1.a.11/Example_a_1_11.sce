//Example 1_11 page no:28
clc;
R1=5;
R2=25;
R3=10;
V=50;
It=6;
//current in branch ADB
I30=V/(R2+R1);
disp(I30,"the current in branch ADB is (in A)");
//current in branch ACB
I10=It-I30;
disp(I10,"the current in branch ACB is (in A)");
R=(V/I10)-R3;
disp(R,"the resistance R is (in ohm)");
