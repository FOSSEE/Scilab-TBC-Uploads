//Initililization of variables
m=6.12 //kg
g=9.81//m/s^2
x1=3 //m
x2=4 //m
y=6 //m
z1=2 //m
z2=4 //m
AB=5
//Calculations
AD=sqrt(x1^2+y^2+z1^2) 
AC=sqrt(x2^2+z1^2)
//Sum of forces in the y direction
T1=(m*g*AD)/6 //N
//sum of forces in the x and z direction
//Matrix solution of the folllowing simultaneous equations
X=[x2/AC, -x1/AB;-z1/AC, z2/AB]
Y=[T1*(x1/AD);T1*(z1/AD)] 
R=inv(X)*Y
T2=R(1) //N
T3=R(2) //N
//Result
clc
printf('The values of T1,T2 and T3 are %f N,%f N and %f N respectively',T1,T2,T3) 
