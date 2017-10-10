//Example 16_11 page no:767
clc;
//given
Z11=2.5;
Z21=1;
Z22=2;
Z12=1;
Zl=2;
Zs=1;
Z1=Z11-((Z12*Z21)/(Zl+Z22));
Zin=Zs+Z1;
disp(Zin,"the input impedence is (in ohm)");
