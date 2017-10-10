clc; funcprot(0);
//Example 8.15  Center of Pressure 

// Initialisation of variables
WbyS = 8;        //Wing Loading
V = 100*1.467;
CMo = -0.067;

// Calculations
Cl = (2*WbyS/(rho*V^2))
CM_qtrChrd = CMo;
CP =  0.25 - CM_qtrChrd/Cl;

//Results 
disp(CP*100,"Center of Pressure in % of chord length:");