//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.10
//calculation of round off value upto three digits.

//given data
a=15462
b=14.745
c=14.750
d=14.650*10^12

//calculation
//since round off upto three digit is required, we have to sort the numerics with the number of significant figures i.e. 3
na=15500
nb=14.7
nc=14.8
nd=14.6*10^12

printf('the value of %f rounded upto three significant digits is %d',a,na);
printf('\nthe value of %f rounded upto three significant digits is %3.2f',b,nb);
printf('\nthe value of %f rounded upto three significant digits is %3.2f',c,nc);
printf('\nthe value of %3.4e rounded upto three significant digits is %3.2e',d,nd);
