//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.6w
//calculation of angle 

//given data
xcompOA=4; //magnitude(in m) of x component of OA vector
//xcompOB=6*cos(theta) magnitude(in m) of x component of OB vector

//calculation
theta=acosd(-xcompOA/6);//since xcompOA + xcompOB=0      where xcompOB=6*cos(theta)

disp(theta,'the value of angleAOB(in degree) is');
