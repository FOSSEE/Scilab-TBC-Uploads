//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.2
//calculation of the time taken by the fan to attain half of the maximum speed

//given data
wzero=0//initial angular velocity(in rad/s) of the fan
w=400*(2*%pi/60)//final angular velocity(in rad/s) of the fan
t=5//tiem(in s) taken

//calculation
alpha=(w-wzero)/t//equation of angular motion
wdash=w/2//half of maximum speed
t1=(wdash-wzero)/alpha//equation of angular motion

printf('the time taken by the fan to attain half of the maximum speed is %3.1f s',t1)
