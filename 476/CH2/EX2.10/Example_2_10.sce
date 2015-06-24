//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 10


clear;
clc;


//Given:
D1 = 25; //internal diameter of pipe in mm
u1 = 10; //upstream velocity in m/s
D2 = 50; //downstream diameter of pipe in mm
//Since there is no external device for adding or removing energy as work
//Q = 0, Ws = 0

//To find change in enthalpy and maximum enthalpy change

//(a)
//Let A1 nad A2 be upstream and downstream crosssectional areas of pipe
u2 = ((D1/D2)^2)*u1; //downstream velocity in m/s
H = 0.5*(u1^2-u2^2); //change in enthalpy in J/kg
mprintf('Change in enthalpy is %f J/kg',H);

//(b)
//For maximum enthalpy change 
u2 = 0;
Hmax = 0.5*u1^2; //(J/kg)
mprintf('\nMaximum enthalpy chnage for a sudden enlargement in pipe is %f J/kg',Hmax);

//end