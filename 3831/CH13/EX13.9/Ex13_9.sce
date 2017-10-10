// Example 13_9
clc;funcprot(0);
// Given data
Pd=0.0110;/// The piston displacement in m^3
V_4=1.00*10^-3;// m^3
V_3=V_4;// m^3
p_1=0.300;// MPa
p_2=0.100;// MPa
T_2=30.0;//°C
R=0.286;// kJ/kg.K

// Calculation
// (a)
V_1=Pd-V_3;// m^3
V_2=V_1;// m^3
p_3=p_2*(V_2/V_3);// MPa
// (b)
V_4=V_3;// m^3
p_4=p_1*(V_1/V_4);// MPa
// (c)
m=((p_2*1000)*V_2)/(R*(T_2+273.15));// kg
// (d)
T_1=((p_1*1000)*V_1)/(m*R);// K
// (e)
n_T=(1-((T_2+273.15)/T_1))*100;// %
printf("\n(a)The displacer piston maximum pressure,p_3=%1.2f MPa \n(b)The power piston maximum pressure,p_4=%1.2f MPa\n(c)The mass of air in the engine,m=%0.4f kg \n(d)The heat addition temperature,T_1=%3.0f K \n(e)The Stirling cold ASC thermal efficiency of the engine,n_T=%2.2f percentage",p_3,p_4,m,T_1,n_T);
