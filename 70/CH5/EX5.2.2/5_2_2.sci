//page 238
clear;
close;
clc;
disp('The eigenvalues themselves are not so clear for a rotation.')
disp('90 degree rotation')
K=[0 -1;1 0];
disp(K,'K=')
eig=spec(K);
[V,Val]=spec(K);
disp(eig,'Eigen values:')
x1=V(:,1);
x2=V(:,2);
disp(x1,x2,'Eigen vectors:');
//end