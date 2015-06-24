disp('vector x=')
x=[8;-9;6]
disp(x)
disp('the given basis is:')
b1=[1;-1;-3]
b2=[-3;4;9]
b3=[2;-2;4]
disp(b1,'b1=')
disp(b2,'b2=')
disp(b3,'b3=')
disp('to solve the vector equation')
disp('an augmented matrix is formed')
a=[1 -3 2 8;-1 4 -2 -9;-3 9 4 6]
disp(a,'A=')
disp('performing row operations')
a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:)
disp(a)
a(3,:)=a(3,:)/a(3,3)
a(1,:)=a(1,:)-2*a(3,:)
disp(a)
a(1,:)=a(1,:)+3*a(2,:)
disp(a)
disp('Xb=')
disp(a(:,4))