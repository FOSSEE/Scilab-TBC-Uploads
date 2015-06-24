clear ;
close ;
clc ;
a =[1 1 1;2 2 5;4 4 8];
disp(a,'a=');
disp('x=[u;v;w]');
disp('R2=R2-2*R1,R3=R3-4*R1');
a(2,:)=a(2,:)-2*a(1,:);
a(3,:)=a(3,:)-4*a(1,:);
disp(a);
disp('No exchange of equations can avoid zero in the second pivot positon ,therefore the equations are unsolvable');
//end