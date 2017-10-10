//Example 17_9 page no:847
clc;
R0=800;
D=20;
N=10^(D/20);
R1=R0*(N-1)/(N+1);
R2=R0*(N+1)/(N-1);
disp(R1,"the resistance R1 is (in ohm)");
disp(R2,"the resistance R2 is (in ohm)");
