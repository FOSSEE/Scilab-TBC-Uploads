clc
clear
//Input data
w=588//Weight of the person in N
a=3//Acceleration in m/s^2

//Calculations
m=(w/9.8)//Mass of the person in kg
P=(w+(m*a))//Weight of the person when the elevator is accelerated upwards in N

//Output
printf('Weight of the person when the elevator is accelerated upwards is %i N',P)
