clc;funcprot(0);
//Example 5.1 

//Initializing the variables 

l = 60 ;      //Length of pipeline
rho = 1000;     // Density of liquid
a = 0.02;        //Acceleration of fluid

//Calculations
delP = rho*l*a;     //Change in pressure
disp(delP/1000,"Increase of pressure difference required (kN/m2):");