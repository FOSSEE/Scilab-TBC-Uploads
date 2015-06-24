clc ;funcprot(0);
//Example 2.8 

//Initializing the variables
rho = 10^3;    //Density of fluid
rhoM = 13.6*10^3;    //Density of manometer liquid
g = 9.81;    //Acceleration due to gravity
H = 0.3;    // Differnce in height = b-a as in text
h = 0.7;

//Calculations
result = rho*g*H + h*g*(rhoM-rho);
disp( result/1000,"Pressure difference (kN/m2):");
