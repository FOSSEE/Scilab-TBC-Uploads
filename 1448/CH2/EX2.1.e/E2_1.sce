clc
//Initialization of variables
A=1.23 //A
V=12 //V
t=123 //s
Temp=4.47 //C
rise=3.22 //C
//Calculations
q=A*V*t
C=q/Temp
Output= C*rise
//Results
printf('heat supplied during calibration = %.1f J',q)
printf('\n Heat capacity of the calorimeter = %.1f J/C',C)
printf('\n Heat output = %.2f kJ',Output/1000.)
