clc
clear
//Page number 504
//Input data 
dt=250;//The temperature gradient of an insulated copper rod in degree centigrade per metre 
x=0.05;//The distance between the two points in m 
K=384;//The thermal conductivity of copper in W.m^-1.K^-1 
A=1;//The surface area of the copper rod in m^2 
t=1;//The given time in seconds 

//Calculations 
T=dt*x;//The temperature difference in degree centigrade 
Q=K*A*(dt)*t;//The amount of heat crossed per unit area per sec in J/s 

//Output 
printf('(1)The difference in temperature between two points seperated by 0.05m is  %3.1f degree centigrade \n (2)The amount of heat crossing per second per unit area normal to the rod is  %3.2g J/s ',T,Q)

