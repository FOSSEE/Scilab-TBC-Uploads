
clc
Pa = 1.5 // Pressure in vessel A in MPa
Ta = 50  // Temperature in vessel A in K
ca = 0.5 // Content in vessel A in kg mol
Pb = 0.6 // Pressure in vessel B in MPa
Tb = 20 // Temperature in vessel B in K
mb = 2.5 // Content in vessel B in kg mol
R = 8.3143 // Universal gas constant
Va = (ca*R*(Ta+273))/(Pa*1e03) // volume of vessel A
ma = ca*28 // mass of gas in vessel A
Rn = R/28 // Gas content to of nitrogen
Vb = (mb*Rn*(Tb+273))/(Pb*1e03) // volume of vessel B
V = Va + Vb  // Total volume
m = ma + mb // Total mass
Tf = 27 // Equilibrium temperature in degree Celsius
P = (m*Rn*(Tf+273))/V // Equilibrium pressure 
g = 1.4 // Heat capacity ratio
cv  = Rn/(g-1) // Heat capacity at constant volume
U1 = cv*(ma*Ta+mb*Tb) // Initial internal energy 
U2 = m*cv*Tf// Final internal energy 
Q = U2-U1 // heat transferred

printf("\n Example 10.1")
printf("\n\n The final equilibrium pressure is %f MPa",P/1e3)
printf("\n The amount of heat transferred to the surrounding is %f kJ",Q)
//The answers vary due to round off error

T_ = (ma*Ta+mb*Tb)/m  // final temperature
P_ = (m*Rn*(T_+273))/V // final pressure
printf(" \n\n If the vessel is perfectly insulated")
printf("\n The final temperature is %f degree Celsius",T_)
// Answer varies due to round off error.
printf("\n The final pressure is %f MPa",P_/1e3)
