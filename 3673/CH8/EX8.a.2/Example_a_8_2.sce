//Example_a_8_2 page no:325
clc;
Q=5;
I=10;
V=100;
omega=50;
R=V/I;
L=50/omega;
C=1/(Q*omega*R);
C=C*10^6;
disp(L,"the inductance is (in H)");
disp(C,"the capacitance is (in microFarad)");
