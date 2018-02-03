//===========================================================================
//chapter 11 example 4

clc;
clear all;

//variable declaration
R1    = 0.1;        //standard resistance in Ω
V2    = 0.613;        //voltage drop across standard resistance in V
a    = 100;    
r    = 0.781;        //volt ration box
theta    = 50.48;
theta1    = 12.6;
f        = 50;          //frequency in in HZ

//calculations
I    = V2/R1;        //current through coil in A
V1    = a*r;        //voltage drop across inductive coil in V
theta2 = theta -theta1;
L    = V1*sin(theta2*180/%pi)/(2*%pi*f*I);    //inducatance of coil in H

//result
mprintf("inductance of coil =%3.2f H",L);
