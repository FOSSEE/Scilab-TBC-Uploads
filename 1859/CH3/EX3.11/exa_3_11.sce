// Exa 3.11
clc;
clear;
close;
// Given data
Rm= 40;// in ohm
Im= 1;// in mA
// For switch at position 1 (lowest range of 10 mA)
I=10;// in mA
N1= I/Im;
R1= Rm/(N1-1);// in ohm
// For switch at position 2 (range of 20 mA)
I=20;// in mA
N2= I/Im;
R2= (R1+Rm)/N2;// in ohm
// For switch at position 3 (range of 30 mA)
I=30;// in mA
N3= I/Im;
R3= (R1+Rm)/N3;// in ohm
// For switch at position 4 (range of 40 mA)
I=40;// in mA
N4= I/Im;
R4= (R1+Rm)/N4;// in ohm
// For switch at position 5 (range of 50 mA)
I=50;// in mA
N5= I/Im;
R5= (R1+Rm)/N5;// in ohm
r1= R1-R2;// in ohm
r2= R2-R3;// in ohm
r3= R3-R4;// in ohm
r4= R4-R5;// in ohm
r5= R5;// in ohm
disp("Resistance of the various sections of the Ayrtons shunt in ohm are: ")
disp(r1);
disp(r2);
disp(r3);
disp(r4);
disp(r5);
