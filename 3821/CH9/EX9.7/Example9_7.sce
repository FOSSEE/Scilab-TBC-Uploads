///Chapter 9 Law Of Thermodynamics
////Example 9.7 Page No:169
///Find Steam flow rate
///Input data
clc;
clear;
W1=800;              //Power of turbine shaft Kw
W2=-5;               //Work pump to feed in Kw  
Q1=2700;             //Heat for steam generation KJ/Kg
Q2=-1800;            //Condenser rejected heat KJ/Kg

//Calculation
m=((W1+W2)/(Q1+Q2)); //Steam flow rate in Kg/h


//Output
printf('Steam flow rate= %f Kg/s \n",m);
