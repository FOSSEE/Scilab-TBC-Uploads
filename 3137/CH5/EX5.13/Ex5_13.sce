//Initilization of variables
Wa=400 //lb
Wb=200 //lb
theta=30 //degrees
//Calculations
Ta=Wa*sind(theta) //lb
Tb=Wb*sind(theta) //lb
//Taking moment about point O
P=(Tb*12+Ta*6)/24 //lb
//Result
clc
printf('The value of Ta is %f lb and that of Tb is %f lb,also P is %f lb',Ta,Tb,P)
