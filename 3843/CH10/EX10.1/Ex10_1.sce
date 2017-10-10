// Example 10_1
clc;funcprot(0);
// Given data
T_1=25+273;// The initial temperature in K
P_1=122;// The initial pressure in kPa
T_2=29+273;// The final temperature in K
P_2=120;// The final pressure in kPa
R=0.287;// kJ/kg.K

// Calculation
dv=((R*T_2)/P_2)-((R*T_1)/P_1);// The change in the specific volume of air in m^3/kg
printf("\nThe change in the specific volume of air,dv=%0.5f m^3/kg",dv);
