clc
clear
//Input data
a=30//Angle of inclination in degrees
t=3//Time in s

//Calculations
a=(9.8*sind(a))//Acceleration in m/s^2
v=(0+a*t)//Velocity in m/s

//Output
printf('Speed of the block after %i s is %3.1f m/s',t,v)
