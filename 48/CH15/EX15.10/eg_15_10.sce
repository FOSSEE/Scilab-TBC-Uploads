clc;
clear;
A=[0 1 1;
   1 0 0;
   1 0 0];
B=[1;1;0];
C=[1 1 0;
   1 1 1];
D=[0;1];
K=[C;C*A;C*(A*A)];
K=modulo(K,2);
disp("K matrix")
disp(K);
disp(rank(K),'since the rank of K is ');
disp("K is not further reducible");
//z=K * y;