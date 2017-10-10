clc; funcprot(0);
//Example 10.2 Horse Power Required for Induce Drag

// Initialisation of variables
W = 2000;
b = 38;
alt = 10000;
V = 80*1.467;

// Calculations
Di = (363*(W/b)^2)/V^2
HP_Di = Di*V/550;

//Results 
disp(HP_Di,"Horse power required to overcome induced drag (HP) :");