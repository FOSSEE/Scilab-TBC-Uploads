//Find the values of line to pin capacitance
clear;
clc;
//soltion
//given
n=5;
for p = 1:4
    C=p/(n-p);
    printf("C%d = %.3f*C\n",p,C);
end
