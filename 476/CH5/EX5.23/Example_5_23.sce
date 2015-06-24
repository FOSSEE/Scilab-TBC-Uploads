//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 23


clear;
clc;


//Given:
r = 15; //compression ratio
P1 = 100; //pressure in the beginning (kPa)
T1 = 300; //temperature in thebeginning (K)
Q1 = 500; //heat transfer rate (kJ/kg)
M = 29; //molecular wt of air
R = 8.314; //ideal gas constant

//Specific heats of air (kJ/kg K)
Cp = 1.005;
Cv = 0.718;

//To determine work done thermal efficiency and mean effective pressure
//Referring fig 5.25 (Page no. 167)

//(a)
//Isentropic compression 1-2
V1 = (R*1000*T1)/(M*P1*10^3);
T2 = T1*r^(gama-1);
P2 = P1*r^gama;
V2 = V1/r;
mprintf('(a)');
mprintf('\n At the end of first process');
mprintf('\n Temperature = %f K',T2);
mprintf('\n Pressure = %f kPa',P2);

//Consatnt pressure heat addition 2-3
T3 = Q1/Cp + T2;
V3 = (T3/T2)*V2;
P3 = P2;
mprintf('\n\n At the end of second process');
mprintf('\n Temperature = %f k',T3);
mprintf('\n Pressure = %f kPa',P3);

//Isentropic expansion 3-4
V4 = V1;
T4 = T3/((V4/V3)^(gama-1));
P4 = P3*((V3/V4)^gama);
mprintf('\n\n At the end of third process');
mprintf('\n Temperature = %f K',T4);
mprintf('\n Pressure = %f kPa',P4);
Q2 = Cv*(T4-T1); //heat rejected 4-1

//(b)
Wnet = Q1-Q2;
mprintf('\n\n (b)');
mprintf('\n Net work done per cycle per kg air is %f kJ/kg',Wnet);

//(c)
eff = Wnet/Q1; //thermal efficiency
mprintf('\n\n (c)');
mprintf('\n Thermal efficiency is %f',eff);

//(d)
Pm = Wnet/(V1-V2); //mean effective pressure
mprintf('\n\n (d)');
mprintf('\n Mean effective pressure is %f kPa',Pm);

//end
