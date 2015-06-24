disp('given matrix is:')
a=[2 5;-3 -4]
d=a;
disp(a)
disp('performing row operations')
a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
disp(a)
disp(a)
disp('thus, the upper triangular matrix is')
U=a;
disp(U,'U=')
disp('the lower triangular matrix is:')
L=[1 0;d(2,1)/d(1,1) 1];
disp(L,'L=')