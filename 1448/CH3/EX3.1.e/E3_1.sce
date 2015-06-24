clc
//Initialization of variables
I=0.682 //A
V=12 //V
t=500 //s
m=4.33 //g
MW=46.07 //g/mol
//Calculations
q=I*V*t
n=m/MW
H=q/n
//Results
printf('Molar enthalpy change = %.1f kJ/mol',H/1000.)
