// Example 24_13
clc;funcprot(0);
//Given data 
T_1=27+273;// K
p_1=1;// bar
p_2=4;// bar
n_c=0.80;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of turbine
e=0.75;// The effectiveness of regenerator
p_lr=0.1;// Pressure loss in regenerator along air side in bar
p_lcc=0.05;//  Pressure loss in the combustion chamber in bar
n_com=0.90;// Combustion efficiency
n_m=0.90;// Mechanical efficiency
n_g=0.95;// Generation efficiency
m_a=25;// kg/sec
CV=40000;// kJ/kg
C_pa=1;// kJ/kg.K
C_pg=1.1;// kJ/kg.K
r=1.4;// Specific heat ratio
T_4=700+273;// K
p_atm=1.03;// bar

// Calculation
p_i=p_2-(p_lr+p_lcc);// Pressure at the inlet of the turbine in bar
p_e=p_atm+p_lr;// Pressure at the exit of the turbine in bar
T_2a=T_1*(p_2/p_1)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
T_5a=T_4*(p_e/p_i)^((r-1)/r);// K
T_5=T_4-(n_t*(T_4-T_5a));// K
// Assume m=(m_a/m_f)
// m=y(1),T_3=y(2)
function[X]=airfuelratio(y)
    X(1)=((y(1)+1)*C_pg*(T_4-y(2)))-(CV*n_com);
    X(2)=((C_pa*(y(2)-T_2))/(e*C_pg*(T_5-T_2)))-(1+(1/y(1)));
endfunction
y=[10 100];
z=fsolve(y,airfuelratio);
m=z(1);
T_3=z(2);// K
W_c=C_pa*(T_2-T_1);// kJ/kg of air
W_t=C_pg*(1+(m_a/m))*(T_4-T_5);// kJ/kg of air
W_a=W_t-W_c;// kJ/kg of air
W=W_a*n_m*n_g;// Work available per kg of air at the terminals of generator in kJ/kg
P=(m_a*W)/1000;// Power available at the terminals of generator in kJ/kg
n_o=((W)/((1/m)*CV))*100;// Over all efficiency
Fr=m_a*3600*(1/m);// Fuel required per hour in kg/hr
Sfc=Fr/(P*1000);// Specific fuel consumption in kg/kW.hr
printf('\nThe over all efficiency of the plant=%0.3f percentage \nSpecific fuel consumption=%0.2f kg/kW.hr',n_o,Sfc);
// The answers provided in the textbook is wrong
