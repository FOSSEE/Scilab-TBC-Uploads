//Example 3.9 // resistance and current
clc;
clear;
close;
//given data :
V=240; // voltage in volts
r1=2; // resistance in ohm
r2=3; // resistance in ohm
r3=8.8;  // resistance in ohm
r4=10;  // resistance in ohm
r5=3;  // resistance in ohm
R1=(r1*r2)/(r1+r2); // equivalent resistance of parallel branch
R2=R1+r3; // equivalent resistance of section ABC
R3=(R2*r4)/(R2+r4);
R=R3+r5; // total resistance of section AD
I=V/R;
V1=I*r5; // voltage drop across r5
V2=V-V1; // voltage drop across section ABC
I1=V2/r4; // current flowing through r4 resistance
I2=I-I1; // current in r3 resistance
V3=I2*r3; // voltage drop across r3 resistance, section ABC
V4=V2-V3; // voltage drop between section AB
I3=V4/r1; // current flowing through r1 resistance
I4=V4/r2; //  current flowing through r2 resistance
disp(I3,"current flowing through r1 (2 ohms) resistance,I3(A) = ")
disp(I4,"current flowing through r2 (3 ohms)resistance,I4(A) = ")
disp(R,"total resistance,R(ohm) = ")
disp(V1,"voltage drop across r5(3 ohms) resistance,V1(V) = ")
disp(V2,"voltage drop across section ABC,V2(V) = ")
disp(V3,"voltage drop across r3 resistance(8.8 ohms),V3(V) = ")
disp(V4," voltage drop between section AB,V4(V) = ")
