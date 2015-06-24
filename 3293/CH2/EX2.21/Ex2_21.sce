//page 60
//Example 2.21
clear;
clc;
close;
a1 = [1 2 2 1];
a2 = [0 2 0 1];
a3 = [-2 0 -4 3];
disp('Given row vectors are:');
disp(a1,'a1 = ');
disp(a2,'a2 = ');
disp(a3,'a3 = ');
disp('The matrix A from these vectors will be:');
A = [a1; a2; a3];
disp(A,'A = ');
disp('Finding Row reduced echelon matrix of A that is given by R');
disp('And applying same operations on identity matrix Q such that R = QA');
Q = eye(3,3);
disp(Q,'Q = ');
T = A;              //Temporary matrix to store A
disp('Applying row transformations on A and Q,we get');
disp('R1 = R1-R2');
A(1,:) = A(1,:) - A(2,:);
Q(1,:) = Q(1,:) - Q(2,:);
disp(A,'A = ');
disp(Q,'Q = ');
disp('R3 = R3 + 2*R1');
A(3,:) = A(3,:) + 2*A(1,:);
Q(3,:) = Q(3,:) + 2*Q(1,:);
disp(A,'A = ');
disp(Q,'Q = ');
disp('R3 = R3/3');
A(3,:) = 1/3*A(3,:);
Q(3,:) = 1/3*Q(3,:);
disp(A,'A = ');
disp(Q,'Q = ');
disp('R2 = R2/2');
A(2,:) = 1/2*A(2,:);
Q(2,:) = 1/2*Q(2,:);
disp(A,'A = ');
disp(Q,'Q = ');
disp('R2 = R2 - 1/2*R3');
A(2,:) = A(2,:) - 1/2*A(3,:);
Q(2,:) = Q(2,:) - 1/2*Q(3,:);
disp(A,'A = ');
disp(Q,'Q = ');
R = A;
A = T;
disp('Row reduced echelon matrix:');
disp(R,'R = ');
disp(Q,'Q =');
//part a
disp(rank(R),'rank of R = ');
disp('Since, Rank of R is 3, so a1, a2, a3 are independent');
//part b
disp('Now, basis for W can be given by row vectors of R i.e. p1,p2,p3');
disp('b is any vector in W. b = [b1 b2 b3 b4]');
disp('Span of vectors p1,p2,p3 consist of vector b with b3 = 2*b1');
disp('So,b = b1p1 + b2p2 + b4p3');
disp('And,[p1 p2 p3] = R = Q*A');
disp('So, b = [b1 b2 b3]* Q * A');
disp('hence, b = x1a1 + x2a2 + x3a3 where x1 = [b1 b2 b4] * Q(1) and so on'); //Equation 1
//part c
disp('Now, given 3 vectors a1'' a2'' a3'':');
c1 = [1 0 2 0];
c2 = [0 2 0 1];
c3 = [0 0 0 3];
disp(c1,'a1'' = ');
disp(c2,'a2'' = ');
disp(c3,'a3'' = ');
disp('Since a1'' a2'' a3'' are all of the form (y1 y2 y3 y4) with y3 = 2*y1, hence they are in W.');
disp('So, they are independent.');
//part d
c = [c1; c2; c3];
P = eye(3,3);
for i = 1:3
    b1 = c(i,1);
    b2 = c(i,2);
    b4 = c(i,4);
    x1 = [b1 b2 b4] * Q(:,1);
    x2 = [b1 b2 b4]*Q(:,2);
    x3 = [b1 b2 b4]*Q(:,3);
   P(:,i) = [x1; x2; x3];
end
disp('Required matrix P such that X = PX'' is:');
disp(P,'P = ');
//end
