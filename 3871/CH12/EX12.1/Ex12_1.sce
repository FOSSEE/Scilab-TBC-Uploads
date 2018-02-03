//=====================================================================================
//Chapter 12 example 1
clc;clear all;

//variable declaration
Z1          =  100;			//resistance of arm  in  Ω
Z2          =  50;			//resistance of arm  in  Ω
Z3          =  200;			//resistance of arm  in  Ω
Z4          =  100;			//resistance of arm  in  Ω
theta1        = 30;			//phase angle in °
theta2        = 0;			//phase angle in °
theta3        = -90;			//phase angle in °
theta4        = 30;         //phase angle in °

//calculations
x      = Z1*Z4;     //magnitude		
y      = Z2*Z3;     //magnitude
thetax    = theta1+theta4;
thetay    = theta2+theta3;

//result
mprintf("x   = %3.2f",x)			
mprintf("\nx   = %3.2f",y);	
mprintf("\nsince x =y\n');
mprintf("\nthe first condition is satisfied');
mprintf("\nthetax = %3.2f",thetax);
mprintf("\nthetay   = %3.2f",thetay);
mprintf("\nsecond condition is not saatisfied');
mprintf("\nIt means bridge is unbalancedthrough first condition for equality of magnitude product satisfied,obviously balance is not possible under above conditions");

