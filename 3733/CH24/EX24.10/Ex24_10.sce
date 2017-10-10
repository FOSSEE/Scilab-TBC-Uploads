// Example 24_10
clc;funcprot(0);
//Given data 
T_1=20+273;// K
p_1=1;// bar
T_6=700+273;// K
p_r=6;// Pressure ratio
e=0.7;// The effectiveness of regenerator
m_air=200;//Air flow through the plant in kg/sec
n_c=0.82;// Isentropic efficiency of both compressors
n_t=0.92;// Isentropic efficiency of turbine
n_com=0.96;// Combustion efficiency
n_m=0.96;// Mechanical efficiency
n_g=0.95;// Generation efficiency
CV=35000;// kJ/kg
C_p=1;// kJ/kg.K
r=1.4;// Specific heat ratio

//Calculation
p_2=p_r*p_1;// bar
p_i=sqrt(p_1*p_2);// bar
T_2a=T_1*(p_i/p_1)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_3=T_1;// K
T_4a=T_3*(p_2/p_i)^((r-1)/r);// K
T_4=T_2;// K (as n_c1=n_c2)
T_7a=T_6*((p_1/p_2)^((r-1)/r));// K
T_7=T_6-(n_t*(T_6-T_7a));// K
T_5=(e*(T_7-T_4))+T_4;// K
function[X]=m_f(y)
    X(1)=(C_p*(1+y(1))*(T_6-T_5))-(y(1)*CV*n_com);
endfunction
y=[0.01]
z=fsolve(y,m_f);
m_fuel=z(1);
m_a=1;// kg/kg of air
m=(m_a/m_fuel);//Air fuel ratio
n_th=(((T_6-T_7)-(2*(T_2-T_1)))/(T_6-T_5))*100;// Thermal efficiency
W=(m_a*(T_6-T_5)*(n_th/100));// Work done per kg of air in kJ
W_s=W*m_air;// Work done per sec in kJ/sec
P=W_s/10^3;// Capacity of the plant in MW
P_a=W_s*n_m*n_t;// Power available at generation terminals in kW
F=m_air*3600*m_fuel;// Fuel consumption per hour in kg/hr
Sfc=F/(P_a);// Specific fuel consumption in kg/kW.hr
printf('\nAir fuel ratio used=%0.0f:1 \nThermal efficiency of the cycle=%0.1f percentage \nFuel consumption per hour=%0.0f kg/hr \nSpecific fuel consumption=%0.3f kg/kW.hr',m,n_th,F,Sfc);
// The answers provided in the textbook is wrong
