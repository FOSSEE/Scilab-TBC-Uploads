clear;
clc;
Zabc=[4 1 1;1 4 1;1 1 4];
a=complex(-.5,.866);
A=[1 1 1;1 a^2 a;1 a a^2];
Z012=inv(A)*Zabc*A;
mprintf("Sequence impedence matrix\n");
disp(Z012);


