//clc()
//3*x1 - 0.1*x2 - 0.2*x3 = 7.85
//0.1*x1 + 7*x2 - 0.3*x3 = -19.3
//0.3*x1 - 0.2*x2 + 10*x3 = 71.4
// this can be written in matrix form as
A = [3,-0.1,-0.2,7.85;0.1,7,-0.3,-19.3;0.3,-0.2,10,71.4];
disp(A,"Equation in matrix form can be written as")
X = A(1,:) / det(A(1,1));
Y = A(2,:) - 0.1*X;
Z = A(3,:) - 0.3*X;
Y = Y/det(Y(1,2));
X = X - Y * det(X(1,2));
Z = Z - Y * det(Z(1,2));
Z = Z/det(Z(1,3));
X = X - Z*det(X(1,3));
Y = Y - Z*det(Y(1,3));
A = [X;Y;Z];
disp(A,"final matrix = ")
disp(det(A(1,4)),"x1 = ")
disp(det(A(2,4)),"x2 = ")
disp(det(A(3,4)),"x3 = ")
