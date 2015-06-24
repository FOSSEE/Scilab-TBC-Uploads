clc
clear
//Input data
Q=-300;//Heat transfer in the system consisting of the gas in kJ
u=0;//Internal energy is constant

//Calculations
W=Q-u;//Work done of the system in kJ

//Output
printf('The work done of the system W = %3.0f kJ ',W)
