//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.2w
//calculation of the object distance to obtain maximum angular magnification for a normal eye

//given data
D=10//power(in D) of the lens
v=-25*10^-2//image distance(in m) i.e at the near point

//calculation
f=1/D//focal length
u=1/((1/v)-(1/f))//lens formula

printf('the object distance to obtain maximum angular magnification for a normal eye is %3.1f cm',u*10^2)
