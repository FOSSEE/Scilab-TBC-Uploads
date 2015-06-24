//clc()
//y = -0.859 + 1.032*x
Z = [1,10;1,16.3;1,23;1,27.5;1,31;1,35.6;1,39;1,41.5;1,42.9;1,45;1,46;1,45.5;1,46;1,49;1,50];
for i = 1:15
    Y(i) = 9.8*68.1*(1-exp(-12.5*i/68.1))/12.5;
end
M = Z';
R = M*Z;
S = M*Y;
P = inv(R);
X = inv(R)*S;
a0 = det(X(1,1));
a1 = det(X(2,1));
disp(a0,"a0 = ")
disp(a1,"a1 = ")
sxy = 0.863403;
sa0 = (det(P(1,1)) * sxy^2)^0.5;
sa1 = (det(P(2,2)) * sxy^2)^0.5;
disp(sa0,"standard error of co efficient a0 = ")
disp(sa1,"standard error of co efficient a1 = ")
TINV = 2.160368;
a0 = [a0 - TINV*(sa0),a0 + TINV*(sa0)];
a1 = [a1 - TINV*(sa1),a1 + TINV*(sa1)];
disp(a0,"interval of a0 = ")
disp(a1,"interval of a1 = ")
