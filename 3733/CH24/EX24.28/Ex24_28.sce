// Example 24_28
clc;funcprot(0);
//Given data 
T_1=15+273;// K
p_1=1;// bar
T_3=680+273;// K
p_2=5;// bar
n_c=0.76;// Isentropic efficiency of compressor
n_t=0.86;// Isentropic efficiency of both turbines
m_a=23;// kg/sec
C_pa=1.005;// kJ/kg.K
C_pg=1.128;// kJ/kg.K
r_a=1.4;// Specific heat ratio for air
r_g=1.34;// Specific heat ratio for gases
CV=42000;// kJ/kg

//Calculation
//First considering C-TB_1
T_2a=T_1*(p_2/p_1)^((r_a-1)/r_a);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
// Assume m_r1=m_a1/m_f1
m_r1=(CV/(C_pg*(T_3-T_2)))-1;
T_4a=T_3/(p_2/p_1)^((r_g-1)/r_g);// K
T_4=T_3-((T_3-T_4a)*n_t);// K
m_f1=(m_a*C_pa*(T_2-T_1))/((m_r1+1)*C_pg*(T_3-T_4));// kg/sec
m_a1=m_r1*m_f1;// kg/sec
m_a2=m_a-m_a1;// kg/sec
// Now considering G-TB_2
//m_f2=y(1)
function[X]=massoffuel(y)
    X(1)=((m_a2+y(1))*C_pg*(T_3-T_2))-(y(1)*CV);
endfunction
y=[0.01];
z=fsolve(y,massoffuel);
m_f2=z(1);// kg/kg of air
m_r2=m_a2/m_f2;
W_2=(m_a2+m_f2)*C_pg*(T_3-T_4);//Work developed by TB_2 kW
W_1=m_a1*C_pa*(T_2-T_1);// The capacity of TB_1 to run the compressor in kW
m_f=(m_f1+m_f2)*60;// kg/min
n_th=(W_2/((m_f/60)*CV))*100;// The thermal efficiency of the plant in %
printf('\n\The power output of the plant=%0.0f kW \nThe thermal efficiency of the plant=%0.1f percentage',W_2,n_th);
// The answer provided in the textbook is wrong
