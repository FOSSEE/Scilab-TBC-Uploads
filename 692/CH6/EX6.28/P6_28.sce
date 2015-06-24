// Example 6.28
//Enlargement of ROC by pole-zero cancellation
clc;
clear;
z=%z;
Gz = (2 + 1.2*(1/z))/(1 - 0.2*(1/z))
disp(Gz,'Gz = ');
disp('ROC = |z|>0.2');
Hz = 3/(1 + 0.6*(1/z));
disp(Hz,'Hz = ');
disp('ROC = |z|>0.6');
Xz = Gz*Hz;
disp(Xz,'Xz = ');
disp('ROC = |z|>0.2');
