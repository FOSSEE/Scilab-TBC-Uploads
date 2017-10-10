//Example_a_16_8 page no:786
clc;
Zl=20
Z11=10;
Z22=10;
Z12=4;
Z21=4;
V1=20;
Vs=20;
Zl=20;
I1=V1/(Z11-((Z12*Z21)/(Zl+Z22)));
I2=-I1*Z21/(Zl+Z22);
V2=-I2*20;
Zin=V1/I1;
disp(I1,"the current I1 is (in A)");
disp(I2,"the current I2 is (in A)");
disp(V2,"the voltage V2 is (in V)");
disp(Zin,"the input impedence is (in ohm)");
