//ques5
//Isentropic Expansion of Steam in a Turbine
clear
clc
//state 1
P1=5//pressure in MPa
T1=450//temperature in C
h1=3317.2//heat of system in kJ/kg from table
s1=6.8210//entropy of system in kJ/kg.K from table

//state 2
P2=1.4//pressure in MPa
s2=6.8210//entropy of  system remains same ie s2=s1
h2=2967.4//heat of system in kJ/Kg from table

w=h1-h2;//work output of turbine in kJ/kg

printf('The work output of the turbine per unit mass is = %.1f kJ/kg',w);