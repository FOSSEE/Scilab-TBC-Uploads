// Example 24_20
clc;funcprot(0);
//Given data 
P=5;// Power plant capacity in MW
T_1=15+273;// K
p_1=1;// bar
T_4=750+273;// K
p_r=6;// Pressure ratio
p_3=2.24;// bar
e=0.75;// The effectiveness of heat exchanger
n_c=0.8;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of both turbines
n_t1=n_t;
n_t2=n_t;
C_pa=1;// kJ/kg.K
C_pg=1.15;// kJ/kg.K
r_a=1.4;// Specific heat ratio for air
r_g=1.33;// Specific heat ratio for gases
CV=18500;// kJ/kg

//Calculation
p_2=p_1*p_r;// bar
p_re=sqrt(p_1*p_2);//Pressure ratio for each turbine in bar
T_2a=T_1*(p_2/p_1)^((r_a-1)/r_a);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_6=T_4;// K
T_5a=T_4/((p_re)^((r_g-1)/r_g));// K
T_5=T_4-(n_t1*(T_4-T_5a));// K
T_7=T_5;// K
T_3=T_2+(e*(T_7-T_2));// K
//(i)
function[X]=massoffuel(y)
    X(1)=((1+y(1))*C_pg*(T_4-T_3))-(y(1)*CV);
endfunction
y=[0.01];
z=fsolve(y,massoffuel);
m_f1=z(1);// kg/kg of air
AF=1/m_f1;// Air fuel ratio
function[X]=massoffuel1(x)
    X(1)=(C_pg*((1+m_f1+x(1))*(T_6-T_5)))-(x(1)*CV);
endfunction
x=[0.001];
y=fsolve(x,massoffuel1);
m_f2=y(1);// kg/kg of air
W_c=C_pg*(T_2-T_1);// kJ/kg of air
W_t1=C_pg*(1+(m_f1))*(T_4-T_5);// kJ/kg of air
W_t2=C_pg*(1+m_f1+m_f2)*(T_6-T_7);// kJ/kg of air
W_t=W_t1+W_t2;// kJ/kg of air
W_n=W_t-W_c;// kJ/kg of air
//(ii)
Q_s=(m_f1+m_f2)*CV;// kJ/kg of air
n_th=(W_n/Q_s)*100;// Thermal efficiency of the cycle
//(iii)
m_a=((P*10^3)/W_n);// kg/sec
//(iv)
F=m_a*(m_f1+m_f2)*3600;// Fuel required per hour in kg/hr
printf('\n(i)Cycle efficiency=%0.1f percentage \n(ii)Air supplied to the plant=%0.1f kg/sec \n(iii)A:F ratio=%0.1f:1 \n(iv)Fuel consumption of the plant=%0.0f kg/hr',n_th,AF,m_a,F);
// The answers provided in the textbook is wrong
