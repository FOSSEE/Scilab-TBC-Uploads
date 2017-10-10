// Example 13_10
clc;funcprot(0);
// Given data
PR=2.85;// Pressure ratio
p_4byp_1=PR;// Pressure ratio
V_1=0.0110;// m^3
V_3=3.00*10^-3;// m^3
m=0.0500;// kg
R=0.286;// kJ/kg.K

// Calculation
// (a)
p_1=0.500;// MPa
p_2=p_1;// MPa
T_1=(p_1*1000*V_1)/(m*R);// K
T_4=T_1;// K
p_3=p_2*PR;// MPa
p_4=p_3;// MPa
V_4=(m*R*T_4)/(p_4*1000);// m^3
CR=V_1/V_4;// The isentropic compression ratio
V_2=V_3*CR;// m^3
// (b)
p_3=1.43;// MPa
p_4=p_3;// MPa
// (d)
T_2=(p_2*1000*V_2)/(m*R);// K
T_3=T_2;// K
// (e)
n_T_E=(1-(T_2/T_1))*100;// %
printf("\n(a)The compressor inlet pressure and volume,p_2=%0.3f MPa & V_2=%0.5f m^3 \n(b)The power piston outlet pressure and inlet volume,p_4=%1.2f MPa,V_4=%0.5f m^3 \n(c)The compressor outlet pressure,p_3=%1.2f MPa \n(d)The temperatures at the inlet and outlet of the power and displacer pistons T_1=%3.0f K,T_2=%3.0f K,T_3=%3.0f K,T_4=%3.0f K \n(e)The Ericsson cold ASC thermal efficiency of this engine,n_T=%2.1f percentage",p_2,V_2,p_4,V_4,p_3,T_1,T_2,T_3,T_4,n_T_E);
