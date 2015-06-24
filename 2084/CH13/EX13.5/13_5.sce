//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.5
//calculation of the speed of the water coming out of the tap

//given data
h=6//depth(in m) of the tap
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
v=sqrt(2*g*h)//torricelli's theorem

printf('the speed of the water coming out of the tap is %d m/s',round(v))
