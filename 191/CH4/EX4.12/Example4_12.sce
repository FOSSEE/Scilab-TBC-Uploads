//stable LR method
clc;
clear;
close();
format('v',7);
A = [2 1 3 1;-1 2 2 1;1 0 1 0;-1 -1 -1 1];
disp(A, 'A = ');
for i = 1:6
   [L,R,P]= lu(A);
   A = R*P*L; 
   disp(A,R,L,'The L R and A matrix are : ');
end
disp(A,'The (1,1) and (4,4) elements have converged to real eigenvalues')
X = [A(2,2) A(2,3);A(3,2) A(3,3)];
E = spec(X);
disp(E,'Although submatrix themselves are not converging their eigen values converges.')