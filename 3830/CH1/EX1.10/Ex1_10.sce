// Exa 1.10

clc;
clear;

// Given

// Referring Fig. 1.28 and 1.29
Rm = 78; // Meter resistance in Ohms
Ra = 1000; // in Ohms
Rb = 1000; // in Ohms
Rc = 1000; // in Ohms

// Solution

Rth = Rc + Ra*Rb/(Ra+Rb);

// Let Im/Ie be 'x' where Ie = expected value and Im be shown value
x = Rth/(Rth+Rm);

Error = (1-x)*100;

printf('The meter reading shown is %d percent of the expected value. Therefore, Error = %d percent \n',100-round(Error),round(Error));
