clear;
clc;
format('v',6)
A=[10,-4,6];
B=[2,1,0];
disp(A(1,2),'Component of A along ay : ')
P=3*A-B;
disp((P(1,1)^2+P(1,2)^2+P(1,3)^2)^0.5,'magnitude is :')
C=A+2*B;
det_C=(C(1,1)^2+C(1,2)^2+C(1,3)^2)^0.5;
format('v',7)
ac=C/det_C;
disp(ac,'Unit Vector along C is :')