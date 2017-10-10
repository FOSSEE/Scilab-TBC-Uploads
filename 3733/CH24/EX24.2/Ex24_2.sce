// Example 24_2
clc;funcprot(0);
//Given data
T_1=300;// K
P_r=8;// P_r=(p1/p2)
p_1=1;// bar
T_4=1080;// K
m=500;// kg/min
n_c=0.8;
n_t=n_c;//Isentropic efficiency of the compressor and turbine
CV=42000;// kJ/kg
e=0.6;// The effectiveness of the heat exchanger
r=1.4;// Specific heat ratio
C_p=1;// kJ/kg.°C
//C_p=C_pg=C_pa;

//Calculation
T_2a=T_1*(P_r)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// Modified equation in K
T_5a=T_4*(1/P_r)^((r-1)/r);// K
T_5=T_4-(n_t*(T_4-T_5a));// K
T_3=(e*(T_5-T_2))+T_2;// K
//m_f=y(1)
function[X]=Mass(y);
    X(1)=(y(1)*CV)-(C_p*(1+y(1))*(T_4-T_3));
endfunction
y=[0.01]
z=fsolve(y,Mass);
m_f=z(1);// kJ/kg of air
m_a=1;// kg
q=m_a*(T_3-T_2);//Heat saved in kJ/kg of air
M=(m*60*q)/CV;// Fuel saved per hour in kg/hr
W_net=(C_p*(1+m_f)*(T_4-T_5))-(C_p*m_a*(T_2-T_1));// kJ/kg
P=(m/60)*W_net;// The capacity of the plant in kW
printf('\nFuel saved per hour=%0.2f kg/hr\nThe capacity of the plant=%0.1f kW',M,P);
// The answer vary due to round off error

