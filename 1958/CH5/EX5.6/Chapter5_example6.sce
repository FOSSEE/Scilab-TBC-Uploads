clc
clear
//Input data
d=0.02//Diamter of soap bubble in m
s=(25*10^-3)//Surface tension in N/m
//Initial surface area of the bubble is zero and final area is 2*4*pie*r^2 where r is the radius of the bubble

//Calculations
W=(s*2*4*3.14*(d/2)^2)/10^-5//Work done in blowing a soap bubble in J*10^-5

//Output
printf('Work done in blowing a soap bubble is %3.2f*10^-5 J',W)
