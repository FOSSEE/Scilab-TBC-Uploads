clc

A=0.88; // ratio of A2 and A1
C_D=0.85; // ratio of C_D2 to C_D1
P=1.20; // ratio of P2 to P1
V1=11; // m/s

V2=V1*(P/A/C_D)^(1/3);
disp("Maximum speed of the redesigned torpedo =")
disp(V2)
disp("m/s")