clc
disp("Example 14.6")
printf("\n")

s=%s;
//From example 14.4

Y11=(3 + s)/(5*s+6)
Y12=- s/(6 + 5*s)
Y21=- s/(6 + 5*s)
Y22=(2+s)/(6+5*s)   

DYY=Y11*Y22-Y12*Y21

Z11=Y22/DYY;
Z12=-Y12/DYY;
Z21=-Y21/DYY;
Z22=Y11/DYY;

disp(Z11,"Z11=")
disp(Z12,"Z12=")
disp(Z21,"Z21=")
disp(Z22,"Z22=")
