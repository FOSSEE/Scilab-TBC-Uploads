//Initilization of variables
//here forces will be defines as matrices along with their co-ordinates
//Force in N and co-ordinates in mm
F1=[30 200 300] 
F2=[10 400 200]
F3=[20 200 500]
F4=[50 400 500]
//Calculations
//solving as system of linear equations
A=[1 1 1;-600 -600 0;0 600 600]
B=[F1(1)+F2(1)+F3(1)+F4(1);-(F3(1)*F3(3)+F1(1)*F1(3)+F4(1)*F4(3)+F2(1)*F2(3));-(-F3(1)*F3(2)-F1(1)*F1(2)-F4(1)*F4(2)-F2(1)*F2(2))]
C=inv(A)*B
//Result
clc
printf('The reactions are as R1=%fN, R2=%fN and R3=%fN',C(1),C(2),C(3))
