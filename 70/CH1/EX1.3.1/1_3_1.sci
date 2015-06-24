clear;
close;
clc;
a =[1 1 1;2 2 5;4 6 8]
disp('x=[u;v;w]')
disp('R2=R2-R1,R3=R3-4*R1')
a(2,:)=a(2,:)-2*a(1,:);
a(3,:)=a(3,:)-4*a(1,:);
disp(a);
disp('R2<->R3')
b=a(2,:);
a(2,:)=a(3,:);
a(3,:)=b;
disp(a);
disp('The system is now triangular and the equations can be solved by Back substitution');
//end