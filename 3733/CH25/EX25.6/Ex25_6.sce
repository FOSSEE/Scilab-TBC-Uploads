// Example 25_6
clc;funcprot(0);
//Given data 
W_t=200;// MW
T_a=15+273;// K
T_c=750+273;// K
p_r=7.5;// Pressure ratio
T_e=750+273;// K
T_f=100+273;// K
C_pg=1.11;// kJ/kg.°C
C_pa=1.005;// kJ/kg.°C
r_a=1.4;// Specific heat ratio for air
r_g=1.33;// Specific heat ratio for gases
CV=43300;// kJ/kg

// Calculation
T_b=T_a*(p_r)^((r_a-1)/r_a);// K
T_d=T_c/(p_r)^((r_g-1)/r_g);// K
function[X]=mass(y)
    X(1)=y(3)-(y(1)*((C_pg*(T_c-T_d))-(C_pa*(T_b-T_a))));
    // From Moiller chart:
    h_1=3670;// kJ/kg
    h_2=2305;// kJ/kg
    // From steam tables
    h_3=192;// kJ/kg
    h_4=h_3;// kJ/kg
    X(2)=y(4)-(y(2)*(h_1-h_2));
    X(3)=(y(3)+y(4))-(W_t*10^3);
    X(4)=(y(1)*C_pg*(T_e-T_f))-(y(2)*(h_1-h_4));
endfunction
y=[100 10 10000 10000];
z=fsolve(y,mass);
m_a=z(1);// kg/sec
m_s=z(2);// kg/sec
W_g=z(3)/1000;// MW
W_s=z(4)/1000;// MW
Q_s=m_a*((C_pa*(T_c-T_b))+(C_pg*(T_e-T_d)));
n_th=((W_t*10^3)/Q_s)*100;// Thermal efficiency of the cycle
AF=CV/((C_pa*(T_c-T_b))+(C_pg*(T_e-T_d)));
printf('\nThe mass of air supplied per second=%0.1f kg/sec \nThe mass of steam supplied per second=%0.1f kg/sec \nPower output by gas turbine=%0.1f MW \nPower output by steam turbine=%0.1f MW \nOver all efficiency of the plant=%0.1f percentage \nA:F ratio used in the gas turbine plant=%0.1f',m_a,m_s,W_g,W_s,n_th,AF);
// The answers vary due to round off error
