disp('given matrix A and vector x')
a=[5 (1/3);(1/3) 1]
disp(a,'A=')
x=[6;1]
disp(x,'x=')
disp('Product of transpose of x and A and x=')
p=x'*a*x
disp(p)
disp('New value of vector x=')
x=[1;3]
disp(x)
disp('Product of transpose of x and A and x=')
p=x'*a*x
disp(p)