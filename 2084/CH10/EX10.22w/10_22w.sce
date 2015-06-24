//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.22w
//calculation of the number of revolutions made by the wheel per second

//given data
p=220*10^-2//perimeter(in cm) of the wheel
v=9*10^3/(60*60)//linear speed(in m/s) of wheel on the road

//calculation
r=p/(2*%pi)//radius of the wheel
w=v/r//angular speed
n=w/(2*%pi)//number of revolutions

printf('the number of revolutions made by the wheel per second is %3.2f rev/s',n)
