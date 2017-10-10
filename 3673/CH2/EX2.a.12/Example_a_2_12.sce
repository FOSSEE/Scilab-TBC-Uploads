//Example 2_12 page no:96
clc;
//current source are parallel so added them up
I1=5;
I2=5;
I3=10;
I=I1+I2+I3;
R1=2;
R2=2;
R3=3;
R4=2;
R5=1;
R=1/((1/R1)+(1/R2)+(1/R3)+(1/R4)+(1/R5));
V=I*R;
disp(V,"the voltage source is (in V)");
disp(R,"the resistance connected in series is (in ohm)");
//in text book resistance calculationg is wrong
//R valus is 0.35
