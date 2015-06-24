//page 175
clear;
close;
clc;
disp('Any permutation matrix is an orthogonal matrix.The columns are certainly unit vectors and certainly orthogonal-because the 1 appears in a differnt place in each column')
P=[0 1 0;0 0 1;1 0 0];
disp(P,'P=');
disp(P','inv(P)=P''=');
disp(P'*P,'And,P''*P=');
//end