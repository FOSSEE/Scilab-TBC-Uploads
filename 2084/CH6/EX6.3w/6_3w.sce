//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.3w
//calculation of the maximum value of mass of the block

//given data
mus=.2//coefficient of static friction between the block and the table
M=2//mass(in kg) of one block 
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
N=M*g//normal force
//T=m*g          tension in the string                      (1)
//fs=mus*N       frictional force                           (2)
//f=T            from equlibrium equation of 2 kg block     (3)
//from above equations,we get
m=(mus*N)/g

printf('the maximum value of mass of the block is %3.2f kg',m)
