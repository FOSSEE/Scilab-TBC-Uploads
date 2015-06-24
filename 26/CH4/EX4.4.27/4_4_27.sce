disp('to check if vectors v1 v2 and v3 are linearly independent')
v1=[1;0;0;1]
v2=[3;1;-2;0]
v3=[0;-1;3;-1]
disp(v3,'v3=',v2,'v2=',v1,'v1=')
disp('forming an augmented matrix')
a=[1 3 0 0;0 1 -1 0;0 -2 3 0;1 0 -1 0]
disp(a,'A=')
disp('performing row operations')
a(4,:)=a(4,:)-a(1,:)
disp(a)
a(3,:)=a(3,:)+2*a(2,:)
a(4,:)=a(4,:)+3*a(2,:)
disp(a)
a(4,:)=a(4,:)+4*a(3,:)
disp(a)
disp('since the vector equation has only the trivial solution')
disp('vectors v1 v2 and v3 are linearly independent')