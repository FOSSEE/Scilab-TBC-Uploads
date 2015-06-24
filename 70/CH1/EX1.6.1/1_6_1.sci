//page 47
clear;
close;
clc;
disp('Given matrix:')
A=[2 1 1;4 -6 0;-2 7 2];
disp(A);
[n,m]=size(A);
disp('Augmented matrix :')
a=[A eye(n,m)];
disp(a)
disp('R2=R2-2*R1,R3=R3-(-2)*R1');
a(2,:)=a(2,:)-2*a(1,:);
a(3,:)=a(3,:)-(-1)*a(1,:);
disp(a)
disp('R3=R3-(-1)*R2');
a(3,:)=a(3,:)-(-1)*a(2,:);
disp(a,'a=')
disp(a,'[U inv(L)] :')
disp('R2=R2-(-2)*R3,R1=R1-R3')
a(2,:)=a(2,:)-(-2)*a(3,:);
a(1,:)=a(1,:)-a(3,:);
disp(a)
disp('R1=R1-(-1/8)*R2)')
a(1,:)=a(1,:)-(-1/8)*a(2,:);
disp(a)
a(1,:)=a(1,:)/a(1,1);
a(2,:)=a(2,:)/a(2,2);
disp('[I inv(A)]:')
a(3,:)=a(3,:)/a(3,3);
disp(a);
disp('inv(A):')
a(:,4:6);
disp(a(:,4:6))