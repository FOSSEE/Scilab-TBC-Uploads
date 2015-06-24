// example 9
// power needs of a car to accelerate 
clear
clc
m=900 //mass ofcar in kg
v1=0 //initial velocity of car
v2=80*5/18 //final velocity of car in m/s
t=20 //time in which the car has to reach its desired speed in seconds
w=m*(v2^2-v1^2)/2 //work required to accomplish this task in joules
p=w/t // power required in watts
printf("\n Hence,power required to accelerate is = %.1f kW. \n",p/1000);