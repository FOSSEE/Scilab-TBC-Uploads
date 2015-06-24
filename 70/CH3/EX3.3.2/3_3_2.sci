//page 166
clear;
close;
clc;
disp('b=C+Dt');
disp('Ax=b');
A=[1 -1;1 1;1 2];
disp(A,'A=');
b=[1;1;3];
disp(b,'b=');
disp('If Ax=b could be solved then they would be no errors, they can''t be solved because the points are not on a line.Therefore they are solved by least squares.')
disp('so,A''Ax^=A''b');
x=zeros(1,2);
x=(A'*A)\(A'*b);
disp(x(1,1),'C^ =');
disp(x(2,1),'D^=');
disp('The best line is 9/7+4/7t')
//end