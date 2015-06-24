//Initilization of variables
theta=40 //degrees
x=100 //ft
ax=0 //ft/s^2
ay=-32.2 //ft/s^2
//Calculations
//vox=vocos40....(1)
//voy=vox*t-1/2(32.2)t^2...(2)
//Simplyfying eq (1) and eq(2)
t_f=sqrt((x*tand(theta))/(0.5*(-ay))) //s time of flight
Vo=x/(cosd(theta)*t_f) //ft/s
//As the max height occurs at half wat through the flight
t=t_f/2 //s
ymax=Vo*sind(theta)*t+(0.5*ay*t*t) //ft the formula has positive sign as ay is defined negative
//result
clc
printf('The max height the ball will reach is %f ft',ymax)
