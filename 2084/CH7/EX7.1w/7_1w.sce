//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.1w
//calculation of the maximum speed the car can take on the turn without skidding

//given data
R=45//radius(in m) of the turn
mus=2.0//coefficient of static friction between the tyre and the road
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//considering forces in vertical and horizontal directions an dpplying Newton's law we get
//fs = M*v*v...........................(1)
//by equation of limiting friction,we get
//fs = mus*N = mus*M*g...............(2)
//from above equations we get
v=sqrt(mus*g*R)

printf('the maximum speed the car can take on the turn without skidding is %d m/s or %3.1f km/hr',v,(v*10^-3*60*60))
