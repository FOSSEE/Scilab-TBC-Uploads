//Initilization of variables
Ra=5000 //N
Ma=10000 //Nm
alpha=60 //degree //angle made by T1 with the pole
beta=45 //degree //angle made by T2 with the pole
theta=30 //degree //angle made by T3 with the pole
Lab=6 //m
Lac=1.5 //m
Lcb=4.5 //m
//Calculations
T3=Ma/(4.5*sind(theta)) //N //take moment at B
// Now we use matrix to solve eqn's 1 & 2 simultaneously,
A=[-0.707 0.8666;0.707 0.5]
B=[2222.2;8848.8]
C=inv(A)*B
//Results
clc
printf('Tension in wire 1 i.e T1 is %f N \n',C(2))
printf('Tension in wire 2 i.e T2 is %f N \n',C(1))
printf('Tension in wire 3 i.e T3 is %f N \n',T3)
