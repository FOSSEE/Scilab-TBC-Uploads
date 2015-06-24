disp('the given matrix is:')
a=[2 5 4 1;4 7 6 2;6 -2 -4 0;-6 7 7 0]
disp(a,'A=')
disp('performing row operations')
a(2,:)=a(2,:)-2*a(1,:)
disp(a)
disp('using cofactor expansion about fourth column')
a(1,:)=[]
a(:,4)=[]
disp(a,'det','det(A)= -1 X')
disp('performing row operations')
a(3,:)=a(3,:)+a(2,:)
disp(a)
disp('using cofactor expansion about first column')
a(2,:)=[]
a(:,1)=[]
disp(a,'det','det(A)= -1 X -6 X')
disp(6*det(a),'=')