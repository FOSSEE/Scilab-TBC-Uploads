//page 238
clear;
close;
clc;
disp('The eigen values of a projection matrix are 1 or 0.')
P=[1/2 1/2;1/2 1/2];
eig=spec(P);
[V,Val]=spec(P);
disp(eig,'Eigen values:')
x1=V(:,1);
x2=V(:,2);
disp(x1,x2,'Eigen vectors:');
//end