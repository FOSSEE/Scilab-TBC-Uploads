//Convergence of Inverse Iteration
clc;
clear;
close();
format('v',4);
A = [3 0 1;2 2 2; 4 2 5];
e1 = 7.00;
e2 = 1.02;
p = sum(diag(A))-e1-e2;
disp(A, 'A = ');
A = A - p*eye(3,3);
disp(A,'A-1.98I = ');
L = [1 0 0; 0.50 1 0; 0.26 0.52 1];
U = [4 2 3.02; 0 -.98 0.49; 0 0 -.03];
disp(L,U,'The decomposition of A - 1.98I (L,U): ');
u = [1,1,1]';
I = inv(U)*inv(L);
for i = 1:3
    v = inv(U)*inv(L)*u;
    disp(max(v),v,u,i-1,'The values of s u(s) v(s+1) and max(v(s+1)) : ');
    u = v./max(v);
end
disp(u,'The Eigen Vector : ');
ev = p+1/max(v);
disp(ev,'The approx eigen value  :');