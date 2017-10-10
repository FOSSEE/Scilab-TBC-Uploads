// Example 24_17
clc;funcprot(0);
//Given data 
P=1600;// Power plant capacity in kW
T_1=300;// K
T_3=1050;// K
p_1=1;// bar
T_5=1100;// K
p_2=5;// bar
e=0.7;// The effectiveness of regenerator
n_c=0.8;// Isentropic efficiency of compressor
n_t1=0.85;// Efficiency of compressor turbine
n_t2=0.90;// Efficiency of power turbine
n_com=0.95;// Combustion efficiency
n_m=0.90;// Mechanical efficiency of both turbines
n_g=1;// Generation efficiency
CV=40000;// kJ/kg
C_pa=1;// kJ/kg.K
C_pg=1.1;// kJ/kg.K
r_a=1.4;// Specific heat ratio for air
r_g=1.35;// Specific heat ratio for gases

//Calculation
T_2a=T_1*(p_2/p_1)^((r_a-1)/r_a);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_4a=T_3*(p_1/p_2)^((r_g-1)/r_g);// K
T_4=T_3-(n_t1*(T_3-T_4a));// K
T_6a=T_5*(p_1/p_2)^((r_g-1)/r_g);// K
T_6=T_5-(n_t2*(T_5-T_6a));// K
m_a2=P/(C_pg*(T_5-T_6)*n_m*n_g);// kg/sec
//Power developed by compressor turbine = Power absorbed by compressor
//m_a1=y(1)
function[X]=mass(y);
    X(1)=((y(1)+m_a2)*C_pa*(T_2-T_1))-(y(1)*C_pg*(T_3-T_4)*n_m);
endfunction
y=[10];
z=fsolve(y,mass);
m_a1=z(1);// kg/sec
T_y=((m_a1/(m_a1+m_a2))*T_4)+((m_a2/(m_a1+m_a2))*T_6);// The temperature after mixing in °C
T_x=T_2+((e*C_pg*(T_y-T_2))/C_pa);// K
m_f=((C_pg*m_a1*(T_3-T_x))+(C_pg*m_a2*(T_5-T_x)))/(CV*n_com);// kg/sec
n_th=(P/(m_f*CV))*100;// Plant efficiency in percentage
Sfc=(m_f*3600)/P;// kg/kWh
Afr=(m_a1+m_a2)/m_f;// Air fuel ratio
printf('\n(a)Plant efficiency=%0.1f percentage \n(b)Specific fuel consumption=%0.3f kg/kW-hr \n(c)Air fuel ratio=%0.0f:1',n_th,Sfc,Afr);
// The answer vary due to round off error
