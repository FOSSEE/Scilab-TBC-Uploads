disp('The co-efficient matrix is:')
a=[-1 2;2 -3;-1 3]
disp(a,'A=')
disp('The RHS is:')
b=[4;1;2]
disp(b)
disp('Product of transpose of A and A=')
p1=a'*a
disp(p1)
disp('Product of transpose of A and b=')
p2=a'*b
disp(p2)
disp('Hence, the solution is:')
p=inv(p1)*p2
disp(p)