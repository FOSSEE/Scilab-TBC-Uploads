//Example 3.10 // current
clc;
clear;
close;
//given data :
I=44; // current in A
r1=6; // resistance in ohm
r2=12;  // resistance in ohm
r3=18; // resistance in ohmr1
a=(1/r1)+(1/r2)+(1/r3);
R=1/a;
V=I*R;
i1=V/r1;
i2=V/r2;
i3=V/r3;
disp(i1,"current in 6 ohm resistance,i1(A) = ")
disp(i2,"current in 12 ohm resistance,i2(A) = ")
disp(i3,"current in 18 ohm resistance,i3(A) = ")
