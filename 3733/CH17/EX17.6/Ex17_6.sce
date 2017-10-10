// Example 17_6
clc;funcprot(0);
//Given data
m_a=84;// kg/hr
p_v=70;// cm of Hg
p_b=76;// cm of Hg
T_i=20;// The temperature at the inlet of the vacuum pump in °C
n_v=80;// Volumetric efficiency in %
N=200;// rpm
LbyD=3/2;// L/D ratio
R=287;// J/kg.k

//Calculation
//(a)
p_t=((p_b-p_v)/p_b)*1.013;// bar
//From steam table, a saturation temperature at 20°C
p_s=0.0238;// bar
v_s=57.63;//The specific volume of saturated steam in m^3/kg
p_a=p_t-p_s;// Partial pressure of air at point A in bar
V=(m_a*R*(T_i+273))/(p_a*10^5);// Total volume in m^3/hr

//(b)
D=(((V/60)*100^2*100*4)/(%pi*1.5*N*(n_v/100)))^(1/3);// cm
L=1.5*D;// Stroke of air pump in cm

//(c)
m_s=V/v_s;// kg/hr
printf('\n(a)Capacity of air pump=%0.1f m^3/hr \n(bThe dimensions of the reciprocating air pump D=%0.0f cm & L=%0.1f cm \n(c)The mass of water vapour extracted per minute=%0.2f kg/hr',V,D,L,m_s);
// The answer vary due to round off error
