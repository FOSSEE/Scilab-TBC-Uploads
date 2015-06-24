//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.14w
//calculation of the work done by the torque in first two seconds

//given data
wzero=20//initial angular velocity(in rad/s) of the motor
w=0//final angular velocity(in rad/s) of the motor
t=4//time(in s) taken to attain rest position
I=.20//moment of inertia(in kg-m^2) of the disc about axis of rotation
t1=2//time(in s)

//calculation
alpha=(wzero-w)/t//equation of angular motion in case of deceleration
tau=I*alpha//torque
theta=(wzero*t1)-(alpha*t1*t1/2)//equation of angular motion
W=tau*theta//work done by the torque

printf('the work done by the torque in first two seconds is %d J',W)
