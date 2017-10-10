// Example 9_6
clc;funcprot(0);
// Given data
m_H=0.300;// lbm/s
T_H=140.0;// °F
m_C=0.300;// lbm/s
T_C=50.0;// °F
c=1.00;// Btu/(lbm.R)

// Calculation
// (a)
m_M=m_H+m_C;// lbm/s
gamma=m_H/m_M;// The mass flow rate ratio
T_1=T_H;// °F
T_2=T_C;// °F
T_1byT_2=(T_H+459.67)/(T_C+459.67);// The temperature ratio
T_3=T_C+(gamma*(T_H-T_C));// °F
m_3=m_M;// lbm/s
S_p_mixing=m_3*c*log((1+(gamma*(T_1byT_2-1)))*(T_1byT_2)^(-gamma));// Btu/(s.R)
S_p_mixing=S_p_mixing*778.17;// ft.lbf/(s.R)
printf("\n(a)The shower mixture temperature,T_3=%2.0f°F \n   The entropy production rate,(S_p)_mixing=%1.2f lbf/(s.R)",T_3,S_p_mixing);
// (b)
gamma_c=((1-T_1byT_2)+log(T_1byT_2))/((1-T_1byT_2)*log(T_1byT_2));// The critical mass fraction
S_p_mixing=m_3*c*log((1+(gamma_c*(T_1byT_2-1)))*(T_1byT_2)^(-gamma_c));// // Btu/(s.R)
S_p_mixing=S_p_mixing*778.17;// ft.lbf/(s.R)
printf("\n(b)The critical mass fraction,gamma_c=%0.3f \n   The value of the maximum entropy production rate,(S_p)_mixing=%1.2f ft.lbf/(s.R)",gamma_c,S_p_mixing);
