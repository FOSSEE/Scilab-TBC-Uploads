disp('The co-efficient matrix is:')
a=[1 -2;-1 2;0 3;2 5]
disp(a,'A=')
disp('The RHS is:')
b=[3;1;-4;2]
disp(b,'b=')
disp('Product of transpose of A and A=')
p1=a'*a
disp(p1)
disp('Product of transpose of A and b=')
p2=a'*b
disp('Forming an augmented matrix to solve the normal equations')
p=[p1 p2]
disp(p)
disp('performing row operations')
disp('R2=R2-R1')
p(2,:)=p(2,:)-p(1,:)
disp(p)
disp('R1=R1/6 and R2=R2/36')
p(1,:)=p(1,:)/6
p(2,:)=p(2,:)/36
disp(p)
disp('R1=R1-R2')
p(1,:)=p(1,:)-p(2,:)
disp(p)
disp('Hence, the solution is:')
disp(p(:,3))
x=p(:,3)
disp('The least square error is=||Ax-b||')
disp('Ax-b=')
disp(a*x-b)
c=a*x-b
s=0
for i=1:4
  s=s+c(i,1)^2
end
disp('||Ax-b||=')
disp(sqrt(s))