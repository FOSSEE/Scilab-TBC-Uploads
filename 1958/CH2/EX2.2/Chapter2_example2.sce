clc
clear
//Input data
m=10//Mass of block in kg
q=40//Angle made by the force with horizontal in degrees
s=5//Horizontal displacement of the block in m
u=0.3//Coefficient of kinematic friction 

//Calculations
F=(u*m*9.8)/(cosd(q)+(u*sind(q)))//Pulling force in N
W=(F*cosd(q))*s//Workdone by the pulling force in J

//Output
printf('Workdone by the pulling force is %3.2f J',W)
