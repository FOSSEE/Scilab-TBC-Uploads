//Initilization of variables
w=50 //lb wind load
W=60 //lb weight of door
//Calculations
//Calculation as system of linear equations
A=[0 0 33;1 1 -1;28 10 -28]
B=[50*18;-50;-50*24]
C=inv(A)*B
P=C(3)/cosd(20)
D=[-28 -10;1 1]
E=[1080-(28*(P*sind(20)));P*sind(20)]
F=inv(D)*E
By=60
//Result
clc
printf('The forces are as follows: \n')
printf('Az=%flb Bz=%flb Pz=%flb Ax=%flb Bx=%flb P=%flb By=%flb',C(1),C(2),C(3),F(1),F(2),P,By)
