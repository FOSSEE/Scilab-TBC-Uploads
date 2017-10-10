// Example 10_16
clc;funcprot(0);
// Given data
m_H=0.180;// lbm/s
T_H=130;// °F
m_C=0.270;// lbm/s
T_C=60.0;// °F
T_0=55.0;// °F
p_0=14.7;// psia
C_w=1.00;// Btu/(lbm.R)

// Calculation
// (a)
T_M=((m_H*(T_H+459.67))+(m_C*(T_C+459.67)))/(m_H+m_C);// R
T_M=T_M-459.67;// °F
// (b)
a_fH=(C_w*(T_H-T_0))-(C_w*(T_0+459.67)*log((T_H+459.67)/(T_0+459.67)));// Btu/lbm
a_fC=(C_w*(T_C-T_0))-(C_w*(T_0+459.67)*log((T_C+459.67)/(T_0+459.67)));// Btu/lbm
a_fm=(C_w*(T_M-T_0))-(C_w*(T_0+459.67)*log((T_M+459.67)/(T_0+459.67)));// Btu/lbm
m_m=m_H+m_C;// lbm/s
gamma=m_H/m_m;// The second law availability efficiency
epsilon_mixingHX=(((1-gamma)*(a_fm-a_fC))/(gamma*(a_fH-a_fm)))*100;// %
printf("\n(a)The temperature of the mixed water in the sink,T_M=%2.0f°F \n(b)The second law availability efficiency of the sink as a mixing-type heat exchanger,epsilon_mixingHX=%2.1f percentage",T_M,epsilon_mixingHX)
