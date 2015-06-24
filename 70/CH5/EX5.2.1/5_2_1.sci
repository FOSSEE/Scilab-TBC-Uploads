//page 238
clear;
close;
clc;
A=[1/2 1/2;1/2 1/2];
[V,Val]=spec(A);
disp(Val,'Eigenvalue matrix:');
disp(V,'S=');
disp(A*V,'AS=S*eigenvaluematrix')
disp('Therefore inv(S)*A*S=eigenvalue matrix')
//end