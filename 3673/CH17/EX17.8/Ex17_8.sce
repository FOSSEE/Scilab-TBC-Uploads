//Example 17_8 page no:846
clc;
R0=100;
D=20;
N=10^(D/20);
R1=R0*(N^2-1)/(2*N);
R2=R0*(N+1)/(N-1);
disp(R1,"the resistance R1 is (in ohm)");
disp(R2,"the resistance R2 is (in ohm)");
