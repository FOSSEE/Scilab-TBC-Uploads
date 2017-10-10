// Example 17_7
clc;funcprot(0);
//Given data
m_s=12500;// kg/hr
m_a=5;// kg/hr
p_v=70;// cm of Hg
p_b=76;// cm of Hg
T=34;// °C
n_v=80;// Volumetric efficiency in %
N=100;// rpm
LbyD=1.5;// L/D ratio
R=287;// J/kg.k

//Calculation
//From steam table, a saturation temperature at 34°C
p_s=0.0542;// bar
p_t=(p_b-p_v)*0.01359;// Pressure in condenser in bar
p_a=p_t-p_s;// Partial pressure of air in bar
V=(m_a*R*(T+273))/(p_a*10^5);// Volume of air in the condenser in m^3/hr
V=V/60;// m^3/min
V_s=m_s/(60*1000);// Volume of condensate formed m^3/min
T_v=V+V_s;// Total volume of air and condensate removed by the pump m^3/min
D=((T_v*100^2*100*4)/(%pi*1.5*N*(n_v/100)))^(1/3);// Diameter in cm
L=1.5*D;// Stroke of air pump in cm
printf('\n The capacity of wet air pump=%0.3f m^3/min \nThe dimensions of pump D=%0.1fcm & L=%0.0fcm',T_v,D,L);
// The answer vary due to round off error
