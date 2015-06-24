//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.2w
//calculation of frictional force and minimum value of coefficient of static friction

//given data
m=4//mass(in kg) of the block
f=20//frictional force(in N)=horizontal force(in N)
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
N=m*g//normal force
musmin=f/N

printf('the frictional force on the block,in opposite direction to the applied force is %3.2f N',f)
printf('\nthe coefficient of static friction between the block and the table is greater than or equal to %3.2f',musmin)
