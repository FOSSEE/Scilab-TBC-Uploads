//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.18w
//calculation of value

//given data
x=24.36;
y=0.0623;
z=256.2;

//calculation

//since after point the value of z is in one digit,thus consider only one digit after point.
//the other values can be thus written as
x=24.4;
y=.1;
z=256.2;

temp=x+y+z
printf('the value is %3.1f',temp);
