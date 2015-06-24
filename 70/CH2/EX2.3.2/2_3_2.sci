//page 92
clear;
close;
clc;
A=[1 3 3 2;2 6 9 5;-1 -3 3 0];
disp('Given matrix:')
disp(A)
B=A;
disp('C2->C2-3*C1')
A(:,2)=A(:,2)-3*A(:,1);
disp(A)
disp('Here,C2=3*C1,Therefore the columns are linearly dependent.')
disp('R3->R3-2*R2+5*R1')
B(3,:)=B(3,:)-2*B(2,:)+5*B(1,:);
disp(B)
disp('Here R3=R3-2*R2+5*R1,therefore the rows are linearly dependent.')
//end