// Example 17_5
clc;funcprot(0);
//Given data
T_s=56;// Temperature of steam entering the condenser in °C
T_a=46;// Temperature at the air pump suction in °C
P_b=76;// The barometer reading in cm of Hg
Q=90;// The discharge of dry air pump in m^3/min
R=287;// J/kg.k

//Calculation
//(a)
//From steam tables,at saturation temperature of 56°C
p_s=0.1684;//Pressure of steam in bar
p_s=p_s/0.01359// cm of Hg
p_a=0;// Partial pressureair at the inlet of condenser in cm of Hg
p_t=p_s+p_a;
p_v=P_b-p_t;//Vacuum in the condenser in cm of Hg

//(b)
//From steam tables,at saturation temperature of 46°C
p_s1=0.1028;// bar
v_s=14.56;// m^3/kg
p_a1=(p_t*0.01359)-p_s1;// bar
m_a=(p_a1*10^5*Q*60)/(R*(T_a+273));//The air leakage in the condenser per hour in kg/hr
//(c)
Ls=(Q*60)/v_s;// Loss of condensate in kg/hr
printf('\n(a)The vacuum in the condenser=%0.1f cm of Hg \n(b)The air leakage in the condenser=%0.1f kg/hr \n(c)Loss of condensate=%0.0f kg/hr',p_v,m_a,Ls);
// The answer vary due to round off error
