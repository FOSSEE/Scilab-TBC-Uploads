clc;funcprot(0);//EXAMPLE 3.15
// Initialisation of Variables
t1=310;.........//Minimum temperature in K
t3=1450;............//maximum temperature in K
m=0.38;...........//Mass of working fluid in kg
cv=0.71;...........//Specific heat at constant volume in kJ/kg
//Calculations
t4=sqrt(t1*t3);............//Temperature at the end of adiabatic expansion in K
t2=t4;
W=cv*(t3-t2-t4+t1);..................//Work done in kJ/kg
P=W*(m/60);.................//Power developed in kW
disp (P,"Power developed in kW:")
