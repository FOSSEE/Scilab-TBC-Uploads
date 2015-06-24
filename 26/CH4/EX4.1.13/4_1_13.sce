disp('the given vectors are:')
v1=[1;0;-1]
disp(v1,'v1=')
v2=[2;1;3]
disp(v2,'v2=')
v3=[4;2;6]
disp(v3,'v3=')
w=[3;1;2]
disp(w,'w=')
disp('It is clear that w is not one of the three vectors in v1,v2 and v3')
disp('The span of v1,v2 and v3 contains infinitely many vectors.')
disp('To check if w is in the subspace of v1,v2 and v3,')
disp('we form an augmented matrix.')
a=[1 2 4 3;0 1 2 1;-1 3 6 2]
disp(a)
disp('performing row operations')
disp('R3=R3+R1')
a(3,:)=a(3,:)+a(1,:)
disp(a)
disp('R3=R3-5xR2')
a(3,:)=a(3,:)-5*a(2,:)
disp(a)
disp('there is no pivot in the augmented column,')
disp('hence the vector equation is consistent and w is in span{v1 v2 v3}.')