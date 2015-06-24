clc
clear

//Input data
M=2 //Mach number at shock

//Calculation
p1=4.5 //Pressure ratio (Py/Px) from normal shock gas tables @M
e=p1-1 //Strength of shock wave

//Output
printf('Strength of shock wave is %3.1f',e)
