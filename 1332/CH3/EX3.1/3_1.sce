//Example 3.1
//Limiting Error
//Page no. 45
clc;clear;close;
R=1000;
e=0.1*1000;        //limiting error calculation
printf('Magnitude of the Resistor resistence (R) =\n%i <= R <= %i',R-e,R+e)