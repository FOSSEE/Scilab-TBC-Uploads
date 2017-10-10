// Example 8_13
clc;funcprot(0);
// Given data
T_1=-10;// °C
P_3=0.9;// MPa
Q_C=300;// kW
C=0.07;// $/kWh
C_n=0.50;// The cost of operating a furnace in $/therm
q=100000;// kJ/therm

// Calculation
// (a)
// From appendix D we find,
h_1=183.1;// kJ/kg
s_1=0.7014;// kJ/kg.K
s_2=s_1;// kJ/kg.K
h_3=71.9;// kJ/kg
h_4=h_3;// kJ/kg
h_2=(((0.7014-0.6982)/(0.7131-0.6982))*(211.8-204.2))+204.2;// kJ/kg
mdot=Q_C/(h_2-h_3);// The refrigerant mass flux in kg/s
W_in=mdot*(h_2-h_1);// The compressor power in kW
COP=Q_C/W_in;// The coefficient of performance
// (b)
Coe=W_in*C;// The cost of electricity in $/h
// (c)
Cog=((Q_C*3600)/q)*C_n;// The cost of gas in $/h
printf("\n(a)The coefficient of performance,COP=%1.2f \n(b)The cost of electricity=$%1.2f/h \n(c)The cost of gas=$%1.2f/h",COP,Coe,Cog);
