//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 2.2
clc;
clear;
n1=20//no of teeth in first gear
n2=10//no of teeth in second gear
diratio=n1/n2
disp(diratio,'the ratio of diameters is')
theta1=40//gear1 is rotated by an angle of 40 degree
theta2=(n1/n2)*theta1
disp(theta2,'displace ment of gear2 in (degrees)')
as1=30//angular speed of gear1 is 30 rad/sec
as2=(n1/n2)*as1
disp(as2,' angular speed of gear2 in(rad/sec)')
aa2=4//angular accleration of gear 2 is 4 rad/sec^2
aa1=(n2/n1)*aa2
disp(aa1,'angular accleration of gear 1 in (rad/sec^2)')
t1=5//torque on gear1 5N-m
t2=(n2/n1)*t1
disp(t2,'torque on gear2 in (N-m)')
