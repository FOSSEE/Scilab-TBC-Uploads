//=============================================================
//Chapter 5 example 27

clc;
clear all;


//variable declaration
//V   = (5*sin(theta))+(0.6*sin(3*theta))\

a       = 5;        
b       = 0.6;
rd          = 35;       //resistance in Ω
ra          = 30;       //resistance in Ω

//calculations
R       = (3*rd)+ra;            //resitance in  Ω
//i       = v/R
//i         = (5*sin(theta)/R)+(0.6*(sin(3*theta)/R))
x1          = a/R;
y1          =b/R;
//i         = (x1*sin(theta))+(y1*sin(3*theta))
//Iav       = ((1/%pi)*{(integral(i*dtheta))}(0-%pi)))
//Iav       = (1/%pi)*((0.5*sin(theta))-(0.006/3)*(cos(3*theta)))  
//solving above equation we get (1/%pi)*(1)
p           = (-0.05*((cos((180*%pi/180))-cos(0))))-((0.002*((cos(3*180*%pi/180))-cos(3*0))));
z       = (1/%pi)*p;            //average value in mA


//result
mprintf("average value reading of PMMC ammeter = %3.1f mA",(z*10^3));

