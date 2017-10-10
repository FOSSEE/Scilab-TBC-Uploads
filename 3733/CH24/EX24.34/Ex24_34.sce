// Example 24_34
clc;funcprot(0);
//Given data 
p_1=1;// bar
p_2=8;// bar
T_1=300;// K
T_3=1000;// K
CV=40;// MJ/kg
W_2=500;// kW
C_pa=1;// kJ/kg.°C
C_pg=1;// kJ/kg.°C
r=1.4;// Specific heat ratio for air and gases

//Calculation
p_r=(p_2/p_1);// Pressure ratio
T_2=T_1*(p_r)^((r-1)/r);// K
T_4=T_3/(p_r)^((r-1)/r);// K
// Assume m_a=y(1);m_f=y(2);// m_g1=y(3);m_g2=y(4)
function[X]=mass(y)
    X(1)=(y(1)+y(2))-(y(3)+y(4));
    X(2)=(y(4)*C_pg*(T_3-T_4))-(W_2);
    X(3)=(y(1)*C_pa*(T_2-T_1))-(y(3)*C_pg*(T_3-T_4));
    X(4)=(y(2)*CV*10^3)-((y(1)+y(2))*C_pg*(T_3-T_2));
endfunction
y=[1 0.1 1 1];
z=fsolve(y,mass);
m_a=z(1)*60;// kg/min
m_f=z(2)*3600;// kg/hr
m_g1=z(3);// kg/sec
m_g2=z(4);// kg/sec
Sfc=(m_f/W_2);// kg/kWh
AF=(m_a/60)/(m_f/3600);// Air fuel ratio
n_th=(W_2/((m_f/3600)*CV*10^3))*100;// Thermal efficiency in %
printf('\nThe mass of air consumed by the plant=%0.1f kg/min \nA:F ratio used=%0.0f \nSpecific fuel consumption=%0.2f kg/kWh \nThermal efficiency of the plant=%0.1f percentage',m_a,AF,Sfc,n_th);
// The answer vary due to round off error
