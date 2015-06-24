//clc()
l = 10;//cm
k1 = 0.49;//cal/(s.cm.C)
x = 2;//cm
dt = 0.1;//sec
C = 0.2174;//cal/(g.C)
rho = 2.7;//g/cm^3
k = k1/(C*rho);
L = k * dt / x^2;
disp(L,"L =")
//now, at t = 0, 1.04175 *T'1 + 0.020875 *T'2 = 0 + 0.020875*100
//similarly getting other simultaneous eqautions,we get the following matrix
A = [1.04175,-0.020875,0,0;-0.020875,1.04175,-0.020875,0;0,-0.020875,1.04175,-0.020875;0,0,-0.020875,1.04175];
B = [2.0875;0;0;1.04375];
X = inv(A) * B;
T11 = det(X(1,1));
T12 = det(X(2,1));
T13 = det(X(3,1));
T14 = det(X(4,1));
disp("for t = 0")
disp(T11,"T11 = ")
disp(T12,"T12 = ")
disp(T13,"T13 = ")
disp(T14,"T14 = ")
//to solve for t = 0.2, the right hand side vector is modified to D,
D = [4.09215;0.04059;0.02090;2.04069];
Y = inv(A)*D;
T21 = det(Y(1,1));
T22 = det(Y(2,1));
T23 = det(Y(3,1));
T24 = det(Y(4,1));
disp("for t = 0.2")
disp(T21,"T21 = ")
disp(T22,"T22 = ")
disp(T23,"T23 = ")
disp(T24,"T24 = ")
