//Example 17_7 page no:845
clc;
D=60;
I2=20;
R0=500;
N=10^(D/20);
R1=R0*(N-1)/(N+1);
R2=(2*N)*R0/(N^2-1);
disp(R1,"Each of the series arm is given by (in ohm)");
disp(R2,"the shunt arm resistor R2 is given by (in ohm)");
