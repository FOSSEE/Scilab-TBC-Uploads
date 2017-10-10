clc; funcprot(0);
//Example 10.4 Coefficient for infinite aspect ratio

// Initialisation of variables
Cl0 = 1.03;
alp0 = 9;
Cd0 = 0.067;
Cl8 = 1.03;
AR8 = 8;

// Calculations
alpi = 18.24*Cl0/AR8
Cdi = Cl0^2/(%pi*AR8)
alp = alp0 +alpi;
Cd =Cd0 +Cdi;

//Results 
disp(Cd,"Drag Coefficient at aspect ratio 8 :", alp,"Angle of attack for aspect ratio 8 (Degree):" );