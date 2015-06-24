//clc()
x1 = 1;
x2 = 2;
y1 = 6.194631;
y2 = 14.84392;
y10 = 5.607005;
y11 = 6.360865;
y20 = 13.44346;
y21 = 15.30224;
Ec1 = -(y11 - y10)/5;
disp(Ec1,"Ec (x = 1) = ")
e1 = y1 - y11;
disp(e1,"true error (x = 1) = ")
Ec2 = -(y21 - y20)/5;
disp(Ec2,"Ec (x = 2) = ")
e2 = y2 - y21;
disp(e2,"true error (x = 2) = ")
