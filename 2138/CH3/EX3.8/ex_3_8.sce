//Example 3.8 // voltage
clc;
clear;
close;
//given data :
I=5; // current in A
n=2; // number of resistance in parallel of section BC
r1=15; //  resistance in ohm
r2=20; //  resistance in ohm
r3=60; //  resistance in ohm
r4=64; //  resistance in ohm
r5=64; //  resistance in ohm
r6=2.5; //  resistance in ohm
R1=r4/n; // equivalent resistance of section BC
R2=(r1*r2*r3)/((r1*r2)+(r2*r3)+(r3*r1)); // equivalent resistance of section CD
R=R1+R2+r6; // equivalent resistance of section AD
V=I*R;
disp(V,"voltage,V(v) = ")
