// Example 25_1
clc;funcprot(0);
//Given data 
m_a=2000;// tons/hr
T_1=20+273;// K
p_1=1;// bar
T_3=1000+273;// K
p_r=7;// Pressure ratio
n_c=0.80;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of both turbines
T_5=1200+273;// K
T_6=200+273;// K
p_8=0.1;// bar
C_pa=1;// kJ/kg.K
C_pg=1.1;// kJ/kg.K
r_a=1.4;// Specific heat ratio for air
r_g=1.33;// Specific heat ratio for gases
CV=45*10^3;// kJ/kg

// Calculation
p_2=p_1*p_r;// bar
T_2a=T_1*(p_r)^((r_a-1)/r_a);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_4a=T_3/(p_r)^((r_g-1)/r_g);// K
T_4=T_3-((T_3-T_4a)*n_t);// K
m_a1=(m_a*1000)/3600;// kg/sec
function[X]=mass(y)
    X(1)=(y(1)*CV)-((m_a1+y(1))*C_pg*(T_3-T_2));
endfunction
y=[10];
z=fsolve(y,mass);
m_f1=z(1);
AF=(m_a1)/(m_f1);
W_g=(((m_a1+m_f1)*C_pg*(T_3-T_4))-(m_a1*C_pa*(T_2-T_1)))/1000;
function[Y]=mass2(x)
    Y(1)= (x(1)*CV)-((m_a1+m_f1+(x(1)))*C_pg*(T_5-T_4));
endfunction
x=[1];
m=fsolve(x,mass2);
m_f2=m(1);// kg/sec
// From h-s chart:
h_7=3400;// kJ/kg
h_8=2220;// kJ/kg
// From steam table
h_9=45.5;// kJ/kg
m_s=((m_a1+m_f1+m_f2)*C_pg*(T_3-T_6))/(h_7-h_9);// kg/sec
W_s=(m_s*(h_7-h_8))/1000;// Power developed in steam turbine in MW
W_t=W_g+W_s;// Total power generated in MW
Q_s=(m_f1+m_f2)*CV;// kW
n=((W_t*10^3)/Q_s)*100;// Overall efficiency of the plant
m_f=((m_f1+m_f2)*3600)/1000;// Mass of fuel supplied in tons/hr
Sfc=(m_f*10^3)/(W_t*10^3);// Specific fuel consumption in kg/kWh
printf('\n(i)Total power generating capacity of the plant=%0.0f MW \n(ii)Overall efficiency of the plant=%0.0f percentage \n(iii)Mass of fuel supplied per hour=%0.2f tons/hr \n(iv)Specific fuel consumption=%0.3f kg/kWh',W_t,n,m_f,Sfc);
// The answers provided in the textbook is wrong
