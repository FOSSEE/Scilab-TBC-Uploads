//===========================================================================
//chapter 4 example 7

clc;
clear all;


//variable declaration
Td     = 1.13*10^-3;        //defelecting torque in Nm
m     = 5*10^-3;                                             //weight in kg
g      = 9.81;          //gravity 
theta   = 60;       //deflection in °

//calculations
d     = Td/(m*g*sin(((theta*%pi)/(180))));		//distance of the controlling weight from spindle in mm

//result
mprintf("distance of the controlling weight from spindle = %3.1f mm",(d*10^3));


