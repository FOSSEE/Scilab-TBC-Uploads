clc
clear

//Input data
Is=230 //Specific Impulse in sec
m=1 //Propellent flow in kg/s
g=9.81 //Acceleration due to gravity in m/s^2

//Calculation
F=m*Is*g //Thrust in N

//Output
printf('Thrust is %3.1f N',F)
