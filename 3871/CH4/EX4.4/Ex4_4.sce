//===========================================================================
//chapter 4 example 4
clc;
clear all;

//variable declaration
theta1   = 90;       //deflection in °
x             = 0.5;      //I2/I1

//calculations
//Td  proprtional to I
//theta   proprtional to I
theta2    = theta1*(x);  	//deflection for the current equal to the half of the current in spring controlled instrument in  °
//Tc  proprtional to sin(theta)
//sin(theta) proprtional to I
y    = sin((%pi/(2)))
theta21     = asin(x*y);	//deflection for the current equal to the half of the current in gravity  controlled instrument in  °
theta22  =  (theta21*180)/(%pi);

//result
mprintf("deflection for the current equal to the half of the current in spring controlled instrument = %3.2f °",theta2);
mprintf("\ndeflection for the current equal to the half of the current in gravity  controlled instrument = %3.2f °",theta22);

