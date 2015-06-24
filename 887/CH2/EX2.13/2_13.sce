clc
//ex2.13
R=[30 -10 -20;-10 22 -12;-20 -12 46];      //coefficient matrix
V=[70;-42;0]      //voltage matrix
I=R\V;      //current matrix(from R*I=V)
disp(I(1),'current in mesh1 in amperes, i1=')
disp(I(2),'current in mesh2 in amperes, i2=')
disp(I(3),'current in mesh3 in amperes, i3=')
