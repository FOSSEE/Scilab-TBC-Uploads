// Compute 1-, 2-, inf norms of the vector x, if x=[1.25, 0.02, -5.15, 0]
clearglobal()
clc;
x=[1.25 0.02 -5.15 0]
printf('x is')
disp(x)
printf('First Norm of x is')
disp(norm(x,1))
printf('Second Norm of x is')
disp(norm(x,2))
printf('infinite Norm of x is')
disp(norm(x,'inf'))