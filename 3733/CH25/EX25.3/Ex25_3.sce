// Example 25_3
clc;funcprot(0);
//Given data 
T_1=15+273;// K
T_3=800+273;// K
p_r=8;// Pressure ratio
T_6=200+273;// K
p_9=0.05;// bar
W_t=190;// MW
C_pa=1;// kJ/kg.K
C_pg=1.1;// kJ/kg.K
r=1.33;// Specific heat ratio 
CV=40*10^3;// kJ/kg

// Calculation
T_2=T_1*(p_r)^((r-1)/r);// K
T_4=T_3/(p_r)^((r-1)/r);// K
function[X]=mass(y);
    X(1)=(y(5)+y(6))-(W_t*10^3);
    X(2)=y(7)-((W_t*10^3)/(y(8)*CV));
    X(3)=y(5)-(y(1)*C_pa*((T_3-T_4)-(T_2-T_1)));
    // From Moiller chart:
    h_7=3370;// kJ/kg
    h_8=2080;// kJ/kg
    // From steam tables
    h_9=32.6;// kJ/kg
    h_10=h_9;// kJ/kg
    X(4)=y(6)-(y(4)*(h_7-h_8));
    X(5)=(y(1)*C_pa*(T_3-T_2))-(y(2)*CV);
    T_5=T_3;// K
    X(6)=(y(1)*C_pa*(T_5-T_6))-(y(4)*(h_7-h_9));
    X(7)=(y(3)*CV)-((y(1)*C_pa*(T_5-T_4)));
    X(8)=y(8)-(y(2)+y(3));
endfunction
y=[100 1 1 10 10 10 .1 1];
z=fsolve(y,mass);
m_a=z(1);// kg/sec
m_f1=z(2);// kg/sec
m_f2=z(3);// kg/sec
m_s=z(4);// kg/sec
W_g=z(5)/1000;// MW
W_s=z(6)/1000;// MW
n=z(7)*100;// %
m_ft=z(8)*(3600/1000);// kg/sec
printf('\n(a)Thermal efficiency of the combined cycle=%0.1f percentage \n(b)Power generated in each unit of the cycle,W_g=%0.1f MW & W_s=%0.1f MW \n(c)The generating rate=%0.1f kg/sec \n(d)Mass of fuel supplied=%0.2f tons/hr',n,W_g,W_s,m_s,m_ft);
// The answers provided in the textbook is wrong
