//===========================================================================
//chapter 4 example 5
clc;
clear all;


//variable decelaration
theta1   = 90;       //deflection in °
I1          = 10; 
I2          =5;

//calculations
//Td  proprtional to I^2
//Theta   proprtional to I^2
theta2     = theta1*((I2/(I1))^2);               //deflection for I1 A  spring controlled instrument in  °
//Tc  proprtional to sin(theta)
//sin(theta) proprtional to I**2

x   =     (I2/((I1)))
theta21     = asin(x**2)*(sin(%pi/(2)));    //deflection for I1 A  Gravity  controlled instrument in  °
theta22  =  (theta21*180)/(%pi);

//result
mprintf("deflection for I1 A  spring controlled instrument = %3.2f °",theta2);
mprintf("\ndeflection for I1 A  Gravity  controlled instrument = %3.1f °",theta22);
