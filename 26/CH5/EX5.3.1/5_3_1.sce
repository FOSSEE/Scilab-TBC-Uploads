disp('The given eigenvector matrix is:')
p=[5 7;2 3]
disp(p,'P=')
disp('The diagonal matrix is:')
d=[2 0;0 1]
disp(d,'D=')
disp('Therefore, matrix A=PD(p^-1)')
s=inv(p)
disp(p*d*s)
disp('Hence, A^4=P(D^4)(P^-1)')
disp(p*(d^4)*s)