//page 63
//Example 2.22
clear;
clc;
close;
A = [1 2 0 3 0;1 2 -1 -1 0;0 0 1 4 0;2 4 1 10 1;0 0 0 0 1];
disp(A,'A = ');
//part a
T = A;                  //Temporary storing A in T
disp('Taking an identity matrix P:');
P = eye(5,5);
disp(P,'P = ');
disp('Applying row transformations on P and A to get a row reduced echelon matrix R:');
disp('R2 = R2 - R1 and R4 = R4 - 2* R1');
A(2,:) = A(2,:) - A(1,:);
P(2,:) = P(2,:) - P(1,:);
A(4,:) = A(4,:) - 2 * A(1,:);
P(4,:) = P(4,:) - 2 * P(1,:);
disp(A,'A = ');
disp(P,'P = ');
disp('R2 = -R2 , R3 = R3 - R1 + R2 and R4  = R4 - R1 + R2');
A(2,:) = -A(2,:);
P(2,:) = -P(2,:);
A(3,:) = A(3,:) - A(2,:);
P(3,:) = P(3,:) - P(2,:);
A(4,:) = A(4,:) - A(2,:);
P(4,:) = P(4,:) - P(2,:);
disp(A,'A = ');
disp(P,'P = ');
disp('Mutually interchanging R3, R4 and R5');
x = A(3,:);
A(3,:) = A(5,:);
y = A(4,:);
A(4,:) = x;
A(5,:) = y - A(3,:);
x = P(3,:);
P(3,:) = P(5,:);
y = P(4,:);
P(4,:) = x;
P(5,:) = y - P(3,:);
R = A;
A = T;
disp(R,'Row reduced echelon matrix R = ');
disp(P,'Invertible Matrix P = ');
disp('Invertible matrix P is not unique. There can be many that depends on operations used to reduce A');
disp('-----------------------------------------');
//part b
disp('For the basis of row space W of A, we can take the non-zero rows of R');
disp('It can be given by p1, p2, p3');
p1 = R(1,:);
p2 = R(2,:);
p3 = R(3,:);
disp(p1,'p1 = ');
disp(p2,'p2 = ');
disp(p3,'p3 = ');
disp('-----------------------------------------');
//part c
disp('The row space W consists of vectors of the form:');
disp('b = c1p1 + c2p2 + c3p3');
disp('i.e. b = (c1,2*c1,c2,3*c1+4*c2,c3) where, c1 c2 c3 are scalars.');
disp('So, if b2 = 2*b1 and b4 = 3*b1 + 4*b3  =>  (b1,b2,b3,b4,b5) = b1p1 + b3p2 + b5p3');
disp('then,(b1,b2,b3,b4,b5) is in W');
disp('-----------------------------------------');
//part d
disp('The coordinate matrix of the vector (b1,2*b1,b2,3*b1+4*b2,b3) in the basis (p1,p2,p3) is column matrix of b1,b2,b3 such that:');
disp('  b1');
disp('  b2');
disp('  b3');
disp('-----------------------------------------');
//part e
disp('Now, to write each vector in W as a linear combination of rows of A:');
disp('Let b = (b1,b2,b3,b4,b5) and if b is in W, then');
disp('we know,b = (b1,2*b1,b3,3*b1 + 4*b3,b5)  =>  [b1,b3,b5,0,0]*R');
disp('=> b = [b1,b3,b5,0,0] * P*A  =>  b = [b1+b3,-b3,0,0,b5] * A');
disp('if b = (-5,-10,1,-11,20)');
b1 = -5;
b2 = -10;
b3 = 1;
b4 = -11;
b5 = 20;
x = [b1 + b3,-b3,0,0,b5];
disp(']',A,'[','*',')',x,'(','b = ');
disp('-----------------------------------------');
//part f
disp('The equations in system RX = 0 are given by R * [x1 x2 x3 x4 x5]');
disp('i.e., x1 + 2*x2 + 3*x4');
disp('x3 + 4*x4');
disp('x5');
disp('so, V consists of all columns of the form');
disp('[','X=');
disp('  -2*x2 - 3*x4');
disp('  x2');
disp('  -4*x4');
disp('  x4');
disp('  0');
disp('where x2 and x4  are arbitrary',']');
disp('-----------------------------------------');
//part g
disp('Let x2 = 1,x4 = 0 then the given column forms a basis of V');
x2 = 1;
x4 = 0;
disp([-2*x2-3*x4; x2; -4*x4; x4; 0]);
disp('Similarly,if x2 = 0,x4 = 1 then the given column forms a basis of V');
x2 = 0;
x4 = 1;
disp([-2*x2-3*x4; x2; -4*x4; x4; 0]);
disp('-----------------------------------------');
//part h
disp('The equation AX = Y has solutions X if and only if');
disp('-y1 + y2 + y3 = 0');
disp('-3*y1 + y2 + y4 -y5 = 0');
disp('where, Y = (y1 y2 y3 y4 y5)');
//end
