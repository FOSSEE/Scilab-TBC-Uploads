// Example 1.69 There are 3 childen in a family
clc;
clear;
A=1;
C=2;
D=4;
S=8;
disp(D/S,"Probab. that at least 2 of the children are boys P(D)",C/S,"Probab. that eldest two are boys P(D)",A/S,"Probab. of all are boys P(A)",S, "total No. of samples ");
disp((A/S)/(D/S),"Probab. that all children are boys, given that at least 2 of them are boys P(A/D)=",(A/S)/(C/S),"Probab. that all children are boys, given that the two eldest are boys P(A/C)=");

