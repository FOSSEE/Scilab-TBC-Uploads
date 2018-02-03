//=====================================================================================
//Chapter 13 example 13

clc;clear all;

//variable declaration
Q    = 1000;     //Charge passed through galvanometer in uC
theta1 = 60;
d      = 10;     //defelction in mm
r     = 1000;    //m=circular scale 

//calculations
theta2  = %pi/(3)   //conversion of degrees to radians
K   = Q/(theta2);     //galvanometer constant in uC/radian
theta  = d/(2*r);     //angle turned through by reflected ray for aswing of 10 mm
Q1     = K*theta;         //charge for a swing of 0.005 radian in uC

//result
mprintf("charge for a swing of 0.005 radian = %3.2f uC",Q1);
