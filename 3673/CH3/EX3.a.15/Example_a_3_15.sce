//Example_a_3_15 page no:144
clc;
I=10;
R1=1;
R2=2;
R3=3;
R=3;
I3=10*(2/(2+3));
V=I3*R;
disp(V,"the voltage in first method is (in V)");
R=2;
I2=10*(3/5);
V=I2*R;
disp(V,"the voltage in second method is (in V)");
disp("In both cases, the ratio of current to voltage is the same")
ratio=0.833;
disp(ratio,"the voltage to current ration is");
disp("the reciprocity theroem is verified");
