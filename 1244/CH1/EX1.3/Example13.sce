

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 1 Example # 1.3 ")

//Area of room in m2 is given as
A = 20*20;
//Air temperature in C
Tair = -3;
//Roof temperature in C
Troof = 27;
//Heat transfer coefficient in W/m2-K
h = 10;

//Assume that steady state exists and the direction of heat flow is from the
//roof to the air i.e higher to lower temperature (as it should be).

disp(" The rate of heat transfer by convection from the roof to the air in W")
//The rate of heat transfer by convection from the roof to the air in W
q = (h*A)*(Troof-Tair)
