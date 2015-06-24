// Example 1.44 There is 50 50 chance that a contractor's firm A will bid for construction.
clc;
clear;
A=1/2;
E=3/4;
F=1/3;
disp(F,"Probab. that firm B will get the job if firm A submits a bid is only = ",E, "Probab. that firm B will submit a bid and get the job provided firm A does not bid is = ",A, "Probab. that firm A submits the bid  =");
disp(A*F+(1-A)*E,"Probab. that firm B will get the job=");
