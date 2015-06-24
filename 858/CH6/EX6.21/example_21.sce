clc
clear 
printf("example 6.21 page number 291\n\n")

//to find the crystal yield
//from material balance, we have two linear equations
//1400 = 0.7380L+0.5117C and 600 = 0.2619L+0.4882C

A=[0.7380 0.5117;0.2619 0.4882]
b = [1400;600]
x = A\b;
L = x(1);
C = x(2);
printf("L = %f kg solution",L)
printf("\n\nC = %f kg of MgSO4.7H2O crystals",C)

F = 2000   //in kg/h
cv = 2.93   //in kJ/kg K
H1 = F*cv*(330-293);
printf("\n\nenthalpy of feed = %f kJ",H1)

wt = 246.49   //molar mass MgSO4.7H2O
heat_soln = -13.31*10^3;   //in kJ/kg mol
heat = heat_soln/wt;
heat_crystallization = abs(heat);
H2 = heat_crystallization*C;   //total heat
q = -H1-H2;
printf("\n\nheat absorbed = %f kJ\nthus heat shall be removed",q)
