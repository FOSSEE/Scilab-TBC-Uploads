clc
clear
//Input data
I=5;//Indicated power developed by single cylinder of 2 stroke petrol engine
M=6.5;//Mean effective pressure in bar
d=0.1;//Diameter of piston in m

//Calculations
A=(3.14*d^2)/4;//Area of the cylinder
LN=(I*1000*60)/(M*10^5*A);//Product of length of stroke and engine speed
S=2*LN;//Average piston speed in m/s

//Output
printf('The average piston speed is %3.2f m/s',S)
