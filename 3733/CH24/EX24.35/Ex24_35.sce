// Example 24_35
clc;funcprot(0);
//Given data 
P=2000;// kW
p_r=8;// Pressure ratio
T_1=300;// K
T_3=1000;// K
T_3a=900;// K
CV=42*10^3;// kJ/kg
n_com=0.95;// Combustion efficiency
C_pa=1;// kJ/kg.K
C_pg=1;// kJ/kg.K
r=1.4;// Specific heat ratio for air and gases

// Calculation
T_2=T_1*(p_r)^((r-1)/r);// K
T_4=T_3/(p_r)^((r-1)/r);// K
T_4a=T_3a/(p_r)^((r-1)/r);// K
// Assume m_a=y(1);m_a1=y(2); m_a2=y(3);m_f1=y(4);m_f2=y(5);
function[X]=mass(y)
    X(1)=(y(1)*C_pa*(T_2-T_1))-((y(2)+y(4))*C_pa*(T_3-T_4));
    X(2)=y(1)-(y(2)+y(3));
    X(3)=P-((y(3)+y(5))*C_pg*(T_3a-T_4a));
    X(4)=(y(4)*CV*n_com)-((y(2)+y(4))*C_pg*(T_3-T_2));
    X(5)=(y(5)*CV*n_com)-((y(3)+y(5))*C_pg*(T_3-T_2));
endfunction
y=[1 1 1 0.01 0.01];
z=fsolve(y,mass);
m_a=z(1)*60;// kg/min
m_a1=z(2)*3600;// kg/hr
m_a2=z(3)*3600;// kg/hr
m_f1=z(4)*3600;// kg/hr
m_f2=z(5)*3600;// kg/hr
m_f=m_f1+m_f2;// kg/hr
Sfc=m_f/P;// kg/kW-hr
n_th=(3600/(Sfc*CV))*100;// Thermal efficiency of the plant in %
printf('\nFuel consumed by the plant=%0.1f kg/hr \nSpecific fuel consumption=%0.3f kg/kW-hr \nThermal efficiency of the plant=%0.1f percentage \nMass of air compressed=%0.0f kg/min',m_f,Sfc,n_th,m_a);
// The answer provided in the textbook is wrong
