//Example 3_1 page no:129
clc;
V=(10/2.92)/((1/4.31)+(1/6.77)+(1/2.92));
Va=V*(2/(2+2.31));
Vb=V*(6/6.77);
Vab=Va-Vb;
disp(Vab,"the voltage across Vab is (in V)");
