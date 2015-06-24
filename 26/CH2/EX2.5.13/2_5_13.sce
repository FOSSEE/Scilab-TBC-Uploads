disp('given matrix is:')
a=[1 3 -5 -3;-1 -5 8 4;4 2 -5 -7;-2 -4 7 5]
d=a;
disp(a)
disp('performing row operations')
p21=a(2,1)/a(1,1);p31=a(3,1)/a(1,1);p41=a(4,1)/a(1,1);
a(2,:)=a(2,:)-p21*a(1,:)
a(3,:)=a(3,:)-p31*a(1,:)
a(4,:)=a(4,:)-p41*a(1,:)
disp(a)
p32=a(3,2)/a(2,2);p42=a(4,2)/a(2,2)
a(3,:)=a(3,:)-p32*a(2,:)
a(4,:)=a(4,:)-p42*a(2,:)
disp(a)
disp('thus, lower triangular matrix is:')
L=[1 0 0 0;p21 1 0 0;p31 p32 1 0;p41 p42 0 1]
disp(L,'L=')
disp('Upper triangular matrix is:')
disp(a,'U=')