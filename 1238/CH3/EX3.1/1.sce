//finding required data//
//example 1//
clc
//clears the command window//
clear
//clears// 
//finding time constant and time for capacitor to charge 90% of supplied voltage//
R=10^6 ;//resistance in ohms//
C=10^-5 ;//capacitance in farads//
T=R*C
printf('the time constant=%f seconds\n',T)
//time constant is found out//
v=90/100*10;//v=voltage at time t//
V=10;//voltage in volts//
//t=required time// 
disp('from the formula v=V*(1-exp(-t/(R*C))),we get the required time as:')
t=-((R*C)*log(1-(v/V)))
printf('required time to charge to 90 percent of the supplied voltage=%f seconds',t)
//the result is t seconds//
