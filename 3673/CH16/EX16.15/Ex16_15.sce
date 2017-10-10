//Example 16_15 page no:775
clc;
//given
A=6/5;
B=17/5;
C=1/5;
D=7/5;
Zl1=sqrt((A*B)/(C*D));
disp(Zl1,"the parameter Zl1 is (in ohm)");
Zl2=sqrt((B*D)/(A*C));
disp(Zl2,"the parameter Zl2 is (in ohm)");
phi=atanh(sqrt((B*C)/(A*D)));
disp(phi,"the angle is");
