//page 166
clear;
close;
clc;
disp('y=C+Dt');
disp('Ax=b');
A=[1 -3;1 0;1 3];
disp(A,'A=');
y=rand    (3,1);
disp(y,'y=');
disp('the columns of A are orthogonal,so')
x=zeros(1,2);
disp(([1 1 1]*y)/(A(:,1)'*A(:,1)),'C^ =');
disp(([-3 0 3]*y)/(A(:,2)'*A(:,2)),'D^ =')
disp('C^ gives the besy fit ny horizontal line, whereas D^t is the best fit by a straight line through the origin.')
//end