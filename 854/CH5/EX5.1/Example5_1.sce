//clear//
//Caption: Program to find the resistance, current and current density
//Example5.1
//page 123
clc;
clear;
D = 0.0508; //diameter of conductor in inches
D = 0.0508*0.0254; //diameter in metres
r = D/2; //radius in metres
A = %pi*r^2; //area of the conductor in square metre
L = 1609; //length of the copper wire in metre
sigma = 5.80e07; //conductivity in siemens/metre
R = L/(sigma*A); //resistance in ohms
I = 10; //current in amperes 
J = I/A; //current density in amps/square.metre
disp(R,'Rresistance in ohms of given copper wire R =')
disp(J,'Current density in A/square.metre J = ')
//Result
//Rresistance in ohms of given copper wire R =   
//     21.215013  
//Current density in A/square.metre J =    
//     7647425.6
