//Initilization of variables
F=[100,0,0] //N
CE=5 //m
BC=sqrt(34) //m
AC=sqrt(41) //m
//Calculations
//solving as a matrix for system of linear equations
A=[3/BC,-4/AC,0;0,0,(6*4)/CE;-3/BC,-3/AC,-3/CE]
B=[0;F(1)*4;-F(1)]
C=inv(A)*B
//Result
clc
printf('The forces F1 F2 and F3 are as %f N %fN and %fN respectively\n',C(1),C(2),C(3))
printf('Here F3 is compression assumed and rest are Tension')
