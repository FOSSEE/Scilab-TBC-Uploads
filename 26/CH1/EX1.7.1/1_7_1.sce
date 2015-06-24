disp('given vectors u, v and w are')
u=[5 0 0]'
disp(u)
v=[7 2 -6]'
disp(v)
w=[9 4 -8]'
disp(w)
disp('the augmented matrix is')
a=[5 7 9 0;0 2 4 0;0 -6 -8 0]
disp(a)
disp('R3=R3+3*R2')
a(3,:)=a(3,:)+3*a(2,:)
disp(a)
disp('there are no free variables')
disp('hence, the homogeneous equation has only trivial solution and  the vectors are linearly independent')