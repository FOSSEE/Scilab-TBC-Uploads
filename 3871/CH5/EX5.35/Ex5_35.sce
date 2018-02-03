//===========================================================================
//chapter 5 example 35

clc;
clear all;

//variable declaration
e           = 8.85*10^-12;      
V           = 10000;            //voltage in V
r           = 40*10^-3;         //radius in m

//calcaulations
d       = (4/2)*10^-3;          //voltage in V
theta       = (100)*(%pi/180);      
k          = (2.5*e*(r^2)*(V^2))/(d*theta);

//result
mprintf("spring constant = %3.3e Nm per radian",k);
