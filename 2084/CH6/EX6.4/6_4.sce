//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.4
//calculation of coefficient of static friction and kinetic friction between the block and the plank

//given data
theta1=18//angle of plank(in degree) with horizontal when block starts slipping
theta2=15//angle of plank(in degree) with horizontal when block slips with uniform speed

//calculation
mus=tand(theta1)//formula of coefficient of static friction 
muk=tand(theta2)//formula of coefficient of kinetic friction

printf('the coefficient of static friction between the block and the plank is tan(%d)=%3.2f',theta1,mus)
printf('\n the coefficient of kinetic friction between the block and the plank is tan(%d)=%3.2f',theta2,muk)
