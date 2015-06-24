
clc
//initialisation of variables
i=20 //amp
v=12.8 //v
h=25 //Btu
Q=-i*v// 1 watt Btu/hr
w=3.412//Bhu/hr
//CALCULATIONS
W=Q*w//Btu/hr
E=-h-W//Btu/hr
//RESULTS
printf('The internal energy increasing=% f Btu/hr',E)
