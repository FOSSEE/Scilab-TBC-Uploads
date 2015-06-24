//clc()
//using crank nicolson method, we get simultaneous equations which can be simplified to following matrics
A = [2.04175,-0.020875,0,0;-0.020875,2.04175,-0.020875,0;0,-0.020875,2.04175,-0.020875;0,0,-0.020875,2.04175];
B = [4.175;0;0;2.0875];
X = inv(A)*B;
disp("at t = 0.1 s")
disp(det(X(1,1)),"T11 = ")
disp(det(X(2,1)),"T12 = ")
disp(det(X(3,1)),"T13 = ")
disp(det(X(4,1)),"T14 = ")
C = [8.1801;0.0841;0.0427;4.0901];
Y = inv(A)*C;
disp("at t = 0.2 s")
disp(det(Y(1,1)),"T21 = ")
disp(det(Y(2,1)),"T22 = ")
disp(det(Y(3,1)),"T23 = ")
disp(det(Y(4,1)),"T24 = ")
