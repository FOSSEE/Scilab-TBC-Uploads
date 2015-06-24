//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 22


clear;
clc;


//Given:
r = 8; //compression ratio
T1 = 290; //temperature at beginning (K)
P1 = 100; //pressure at the beginning (kPa)
Q1 = 450; //heat transferred per cycle (kJ/kg K)
Cp = 1.005; //specific heat of air (kJ/kg K)
Cv = 0.718; //specific heat of air (kJ/kg K)
R = 8.314; //ideal gas constant
M = 29; //molecular wt of air

//To determine mean effective pressure
//Basis:
m = 1; //mass of air (kg)

//(a)
//Referring fig. 5.24 (Page no. 164)
V1 = (m*R*1000*T1)/(M*P1*10^3);

//Conditions at state 2
V2 = V1/r;
gama = Cp/Cv;
T2 = T1*(r^(gama-1));
P2 = P1*(r^gama); 
mprintf('(a)');
mprintf('\n At the end of first process');
mprintf('\n Temperature = %f K',T2);
mprintf('\n Pressure = %f kPa',P2);

//Conditions at state 3
//Constant volume process
V3 = V2;
T3 = Q1/Cv + T2;
P3 = (T3/T2)*P2;
mprintf('\n\n At the end of second process');
mprintf('\n Temperature = %f K',T3);
mprintf('\n Pressure = %f kPa',P3);

//Conditions at state 4
T4 = T3/(r^(gama-1));
P4 = P3/(r^gama);
mprintf('\n\n At the end of third process');
mprintf('\n Temperature = %f K',T4);
mprintf('\n Pressure = %f kPa',P4);
Q2 = Cv*(T4-T1); //heat rejected during the constant volume process

//(b)
//Using eq. 5.88 (Page no. 165)
eff = 1 - ((1/r)^(gama-1));
mprintf('\n\n\n (b)');
mprintf('\n Thermal efficiency is %f',eff);

//(c)
W = Q1-Q2; //work done
mprintf('\n\n\n (c)');
mprintf('\n Work done is %f kJ/kg',W);

//(d)
Pm = W/(V1-V2);
mprintf('\n\n\n (d)');
mprintf('\n Mean effective pressure is %f kPa',Pm);

//end