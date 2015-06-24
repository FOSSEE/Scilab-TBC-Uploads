clc
clear
//Input data
m=10//Mass of the block in kg
F1=40//Horizontal force to start moving in N
F2=32//Horizontal force to move with constant velocity in N

//Calculations
u1=(F1/(m*9.8))//Coefficient of static friction
u2=(F2/(m*9.8))//Coefficient of kinetic friction

//Output
printf('Coefficient of static friction is %3.3f \n Coefficient of kinetic friction is %3.3f',u1,u2)
