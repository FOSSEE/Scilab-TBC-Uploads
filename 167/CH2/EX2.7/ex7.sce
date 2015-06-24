// example 7
// Power Transmission by the Shaft of a Car
clear
clc
t=200 //torque applied in N.m
rpm=4000 //revolutions per minute of shaft
n=rpm/60 //revolutions per second of shaft 
w=2*%pi*n*t // shaft power in watts
printf("\n Hence,power transmitted by the shaft of car is = %.1f kW. \n",w/1000);