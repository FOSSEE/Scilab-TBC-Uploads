// Example 32_36
clc;funcprot(0);
//Given data
L_cap=150;// MW
// n=0.435*(L)^0.925;(given)
T_1=[0 8 18 24];// Time in hours
T_2=[0 6 20 24];// Time in hours
L_a=[20 80 40];// Load in MW
L_b=[30 70 20];// Load in MW
SG=0.88;// Specific gravity
CV=40.5;// MJ/kg

// Calculation
E_a=(L_a(1)*(T_1(2)-T_1(1)))+(L_a(2)*(T_1(3)-T_1(2)))+(L_a(3)*(T_1(4)-T_1(3)));// MWh
L_avga=E_a/24;// MW
L_max1=L_a(2);// MW
LF_a=(L_avga/L_max1);// Load factor
E_b=(L_b(1)*(T_2(2)-T_2(1)))+(L_b(2)*(T_2(3)-T_2(2)))+(L_b(3)*(T_2(4)-T_2(3)));// MWh
L_avgb=E_b/24;// MW
L_max2=L_b(2);// MW
LF_b=(L_avgb/L_max2);// Load factor
E_t=E_a+E_b;// The total energy supplied by the plant in MWh
L_p=E_t/24;// The average load on the plant in MW
L_max=L_max1+L_max2;// MW
LF_p=L_p/L_max;// Load factor of the plant
E_1=(L_a(1)+L_b(1));// MW
E_2=(L_a(1)+L_b(2));// MW
E_3=(L_a(2)+L_b(2));// MW
E_4=(L_a(3)+L_b(2));// MW
E_5=(L_a(3)+L_b(3));// MW
E_t=[0 E_1 E_1 E_2 E_2 E_3 E_3 E_4 E_4 E_5 E_5];// MW
T=[0 0 6 6 8 8 18 18 20 20 24];// Time in hrs
L_avgp=[L_p L_p L_p L_p L_p L_p L_p L_p L_p L_p L_p];// The average load on the plant in MW for plot
plot(T',E_t','b',T',L_avgp','r-.');
xlabel('Time in hrs');
ylabel('Load in MW');
legend('Load curve','Average load');
n_com=1;// Combustion efficiency
O_1=E_1*6;// Output in MWh
n_1=0.435*(E_1/L_cap)^0.925;// Efficiency 
I_1=O_1/n_1;// Input in MWh
m_f1=(I_1*10^3*3600)/(CV*10^3);// The mass of fuel supplied in kg
O_2=E_2*2;// Output in MWh
n_2=0.435*(E_2/L_cap)^0.925;// Efficiency 
I_2=O_2/n_2;// Input in MWh
m_f2=(I_2*10^3*3600)/(CV*10^3);// The mass of fuel supplied in kg
O_3=E_3*10;// Output in MWh
n_3=0.435*(E_3/L_cap)^0.925;// Efficiency 
I_3=O_3/n_3;// Input in MWh
m_f3=(I_3*10^3*3600)/(CV*10^3);// The mass of fuel supplied in kg
O_4=E_4*2;// Output in MWh
n_4=0.435*(E_4/L_cap)^0.925;// Efficiency 
I_4=O_4/n_4;// Input in MWh
m_f4=(I_4*10^3*3600)/(CV*10^3);// The mass of fuel supplied in kg
O_5=E_5*4;// Output in MWh
n_5=0.435*(E_5/L_cap)^0.925;// Efficiency 
I_5=O_5/n_5;// Input in MWh
m_f5=(I_5*10^3*3600)/(CV*10^3);// The mass of fuel supplied in kg
m_fta=m_f1+m_f2+m_f3+m_f4+m_f5;// The total fuel consumed during 24 hrs in kg per day
T_fa=m_fta;// Total fuel required for 10 days in kg
V_fa=T_fa/SG;// Volume of the fuel in litres/day
V=(V_fa*10)/1000;// The capacity of the tank required for 10 days in m^3
//(b)
n=0.435*(L_p/L_cap)^0.925;// Efficiency 
E_t=E_a+E_b;// MWh
I_t=E_t/n;// MWh
m_ftb=(I_t*10^3*3600)/(CV*10^3);// Mass of fuel required per day 
T_f=m_ftb*10;// kg
V_fb=(T_f/SG)/1000;// Volume of fuel in m^3
m_f=m_ftb/24;// kg/hr
bsfc=m_f/(L_p*10^3);// kg/kWh
printf('\n(a)The capacity of the fuel tank required=%0.2f m^3 \n(b)Load factor of the plant=%0.3f \n(c)Volume of fuel=%0.0f m^3 \n(d)bsfc=%0.3f kg/kWh',V,LF_p,V_fb,bsfc);
// The answer is varied due to round off error
