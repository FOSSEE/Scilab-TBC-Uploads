//page 238
clear;
close;
clc;
A=[3 0;0 2];
eig=spec(A);
[V,Val]=spec(A);
disp(eig,'Eigen values:')
x1=V(:,1);
x2=V(:,2);
disp(x1,x2,'Eigen vectors:');
//end