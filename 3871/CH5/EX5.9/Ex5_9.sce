//===========================================================================
//chapter 5 example 9
clc;clear all;

//variable declaration 
//dL/dtheta  = x
y     = 2.3*10^-6;
Td1    = 5*10**-7; 
t       = 52;     

//calculations
x     = y*(180/%pi);
Td     = Td1*t;
//Td     = (1/2)*(I**2)*(dL/dtheta);
I           = sqrt((Td*2)/(x));		//current in A

//result
mprintf("current = %3.2f A",I);

