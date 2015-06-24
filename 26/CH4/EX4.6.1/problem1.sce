disp('to find the rank of matrix A')
a=[1 -4 9 -7;-1 2 -4 1;5 -6 10 7]
p=a
disp(a,'A=')
disp('performing row operations')
a(2,:)=a(2,:)+a(1,:)
a(3,:)=a(3,:)-5*a(1,:)
disp(a)
a(3,:)=a(3,:)+7*a(2,:)
disp(a)
disp('It is clear that matrix A has 2 pivot columns')
disp('Hence, rank(A)=2')
disp('COlumns 1 and 2 are pivot columns')
disp(p(:,1),'and',p(:,2),'Hence, basis for C(A) is:')
disp('Basis for row space of A is:')
disp(a(1,:),'and',a(2,:))
disp('To find the basis of N(A), solve Ax=0')
disp('on solving, we get the basis of N(A) as:')
u=[1;2.5;1;0]
v=[-5;-3;0;1]
disp(v,'and',u)