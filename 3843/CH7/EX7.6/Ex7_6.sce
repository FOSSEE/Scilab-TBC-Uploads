// Example 7_6
clc;funcprot(0);
// Given data
T_1=1000;// K
P_1=0.5;// The inlet pressure in MPa
P_2=0.1;// The exit pressure in MPa
T_0=298;// K
R=0.286;// kJ/kg.K

// Calculation
// From the air tables
phi_1=2.968;// kJ/kg.K
phi_2=phi_1-(R*log(P_1/P_2));// kJ/kg.K
// Thus
T_2=657.5;// K
h_2=667.8;// kJ/kg
h_1=1046.1;// kJ/kg
h_0=298.2;// kJ/kg
V_2=sqrt(2)*((h_1-h_2)*10^3)^(0.5);// m/s
P_0=P_2;// MPa
phi_0=1.695;// kJ/kg.K
X_2=(h_2-h_0)+((V_2)^2/(2*1000))-(T_0*(phi_2-phi_0-(R*log(P_2/P_0))));// kJ/kg
X_1=h_1-h_0-(T_0*(phi_1-phi_0-(R*log(P_1/P_0))));// The availability supplied in kJ/kg
e_II=X_2/X_1;// The second law effectiveness for an ideal isentropic nozzle
printf("\nThe second law effectiveness for an ideal isentropic nozzle,e_II=%1.2f",e_II);
// The answer provided in the textbook is wrong
