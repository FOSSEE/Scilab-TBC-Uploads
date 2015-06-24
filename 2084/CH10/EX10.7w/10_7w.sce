//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.7w
//calculation of the position of second kid on a balanced seesaw

//given data
ma=10//mass(in kg) of kid A
mb=15//mass(in kg) of kid B
l=5//length(in m) of the seesaw
la=(l/2)//distance of A kid from fulcrum as he is sitting at an end

//calculation
//taking torque about fulcrum...........(mb*g*x) = (ma*g*)
x=(ma*la)/mb

printf('the second kid should sit at a distance of %3.1f m from the centre',x)
