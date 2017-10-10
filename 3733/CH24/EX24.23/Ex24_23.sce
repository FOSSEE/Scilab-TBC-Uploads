// Example 24_23
clc;funcprot(0);
//Given data 
p_1=1;// bar
p_2=5;// bar
p_3=2.5;// bar
T_1=300;// K
T_3=900;// K
T_5=T_3;// K
m_a=10;// kg/sec
CV=33500;// kJ/kg
C_p=1;// kJ/kg.°C
r=1.4;// Specific heat ratio for air and gases

//Calculation
T_2=T_1*(p_2/p_1)^((r-1)/r);// K
T_4=T_3/(p_2/p_3)^((r-1)/r);// K
T_6=T_5/(p_2/p_3)^((r-1)/r);// K
function[X]=massoffuel(y)
    X(1)=((1+y(1))*C_p*(T_3-T_2))-(y(1)*CV);
endfunction
y=[0.01];
z=fsolve(y,massoffuel);
m_f1=z(1);// kg/kg of air
function[X]=massoffuel1(x)
    X(1)=(C_p*((1+m_f1+x(1))*(T_5-T_4)))-(x(1)*CV);
endfunction
x=[0.001];
y=fsolve(x,massoffuel1);
m_f2=y(1);// kg/kg of air
W_n=((m_a*(1+m_f1)*C_p*(T_3-T_4)))+((m_a*(1+m_f1+m_f2)*C_p*(T_5-T_6)))-(m_a*C_p*(T_2-T_1));// kW
n_g=100;//The generator efficiency is considered 100%
n_th=(W_n/(m_a*(m_f1+m_f2)*CV))*100;// The efficiency of the plant in %
printf('\nThe thermal efficiency of the plant=%0.1f percentage \nPower generating capacity=%0.0f kW',n_th,W_n);
// The answers provided in the textbook is wrong
