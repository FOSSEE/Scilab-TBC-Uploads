//===========================================================================
//chapter 5 example 17
clc;
clear all;

//variable declaration
theta1 =  90;       //defelction in °
theta2 =  360;          //defelction in °
theta3 =  180;              //defelction in °
I1          = 30;			//current in A
I4          = 25;			//current in A

//T is proportional to I**2
//T is proportional to theta
//theta is proportional to math.sqrt (I)
//calculations
I2  = I1*sqrt((theta2/(theta1)));		//current corresponding to deflection of 360 °
I3  = I1*sqrt((theta3/(theta1)));		//current corresponding to deflection of 180 °
theta4  = theta1*((I4/I1)^2);		//defelction  corresponding tocurrent  of 25 A

//result
mprintf("current corresponding to deflection of 360 ° = %3.2f A",I2);
mprintf("\ncurrent corresponding to deflection of 180 ° = %3.2f A",I3);
mprintf("\ndefelction  corresponding tocurrent  of 25 A = %3.2f °",theta4);
