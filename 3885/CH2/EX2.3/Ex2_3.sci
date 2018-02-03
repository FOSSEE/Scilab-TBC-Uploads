//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 2.3
clc;
clear;
n1=200//no of teeth in  gear1
n2=50//no of teeth in  gear2
n3=100//no of teeth in  gear3
n4=50//no of teeth in  gear4
n5=40//no of teeth in  gear5
n6=20//no of teeth in  gear6
n7=150//no of teeth in  gear7
//if gear 1 rotates in clockwise then all odd no gears rotate in clockwisw and even no gear rotate in anticlockwise
ad1=2//angular displacement in gear 1 is 2rad
ad4=(n1/n4)*ad1
disp(ad4,'angular displacement in gear 4 in rad (anticlockwise)')
ad7=(n1/n7)*ad1
disp(ad7,'angular displacement in gear 7 in rad  (clockwise)')
av6=20//angular velocity  of gear 6 is 20 rad/sec
av1=(n6/n1)*av6
disp(av1,'angular velocity of gear 1 in rad/sec; (clockwise)')
av3=(n6/n3)*av6
disp(av3,'angular velocity of gear 3 in rad/sec; (clockwise)')
t1=10//torque on gear 1 is 10 N-m
t3=(n3/n1)*t1
disp(t3,'torque in gear 3 in N-m')
t7=(n7/n1)*t1
disp(t7,'torque in gear 7 in N-m')
