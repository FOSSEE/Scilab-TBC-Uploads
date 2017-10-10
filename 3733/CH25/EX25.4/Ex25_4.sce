// Example 25_4
clc;funcprot(0);
//Given data 
W_t=100*10^3;// kW
W_g=(60/100)*W_t;// kW
T_1=300;// K
p_1=1;// bar
T_3=1000+273;// K
p_r=8;// Pressure ratio
n_c=0.85;// Isentropic efficiency of compressor
n_t=0.90;// Isentropic efficiency of both turbines
n_com=0.95;// Combustion efficiency
Gc=2500;// Rs./ton
T_7=600+273;// K
T_6=200+273;// K
p_9=0.05;// bar
C_pa=1;// kJ/kg.K
C_pg=1.1;// kJ/kg.K
r_a=1.4;// Specific heat ratio for air
r_g=1.33;// Specific heat ratio for gases
CV=40*10^3;// kJ/kg
dT=10;// °C
C_pw=4.2;// kJ/kg°C

// Calculation
// Considering compressor
p_2=p_1*p_r;// bar
T_2a=T_1*(p_r)^((r_a-1)/r_a);// K
T_2=((T_2a-T_1)/n_c)+T_1;// K
// Considering turbine
T_4a=T_3/(p_r)^((r_g-1)/r_g);// K
T_4=T_3-((T_3-T_4a)*n_t);// K
T_5=T_3;// K
// Considering heat balance in CC-I
function[X]=mass(y);
    X(1)=(y(1)*CV*n_com)-((y(2)+y(1))*C_pg*(T_3-T_2));
    X(2)=(W_g)-(((y(2)+y(1))*C_pg*(T_3-T_4))-(y(2)*C_pa*(T_2-T_1)));
    X(3)=(y(3)*CV*n_com)-((y(2)+y(1)+y(3))*C_pg*(T_5-T_4));
endfunction
y=[1 100 1];
z=fsolve(y,mass);
m_a1=z(2);// kg/sec
m_f1=z(1);// kg/sec
m_f2=z(3);// kg/sec
AF_1=m_a1/m_f1;
m_f=m_f1+m_f2;// kg/sec
Q_s=(m_f*CV);// kW
n=(W_t/Q_s)*100;// Efficiency of the plant in %
// From h-s chart:
h_7=3610;// kJ/kg
// From steam table
h_9=32.6;// kJ/kg
m_s=((m_a1+m_f1+m_f2)*C_pg*(T_5-T_6))/(h_7-h_9);// kg/sec
Afsf=m_a1/m_s;// Air flow to steam flow ratio
Cf=((m_f*3600)/1000)*Gc;// Cost of fuel per hour in rupees
E_g=W_t;// Energy generated per hour kWh
Cg=Cf/E_g;// Cost of generation in rupees/kWh
// From h-s chart:
h_8=2220;// kJ/kg
m_w=(m_s*3600*(h_8-h_9))/(C_pw*dT*1000);// Quantity of cooling water required in tons/hr
printf('\n(i)Overall efficiency of the plant=%0.1f percentage \n(ii)Air flow to steam flow ratio=%0.2f \n(iii)Cost of generation=%0.2f rupees/kWh \n(iv)Quantity of cooling water required=%0.0f tons/hr',n,Afsf,Cg,m_w);
// The answer provided in the textbook is wrong
