clear;
clc;

//Example - 8.8
//Page number - 300
printf("Example - 8.8 and Page number - 300\n\n");

//Given
//From compressor to the expansion valve the pressure is 200 bar and from expansion valve to the inlet of compressor the pressure is 1 bar.
//Point 5 is saturated liquid at 1 bar and point 6 is saturated vapour at 1 bar

//It has been reported in the book that at state 1 (310 K, 1 bar)
H_1 = 310.38;//[kJ/kg]
//At state 2 (310 K, 200 bar)
H_2 = 277.7;//[kJ/kg]
//At state 5 (1 bar,saturated liquid)
H_5 = -122.6;//[kJ/kg]
//At state 6 (1 bar,saturated vapur)
H_6 = 77.8;//[kJ/kg]

//The enthalpy at point 3 is same at point 4 as the expansion is isenthalpic

//The mass condensed is 1 kg and therefore m_1 = m+6 + 1

//Enthalpy balance around heat exchanger
//m_2*H_2 + m_2*H_6 = m_3*H_3 + m_7*H_7

//Enthalpy balance around separator
//m_4*H_4 = m_5*H_5 + m_6*H_6
//It can be seen that m_1 = m_2 = m_3 = m_4
//and m_6 = m_7 = m_1 - 1

//Substituting the values for enthalpy balance around heat exchanger we get,
//m_1*H_2 + (m_1 - 1)*(H_6) = m_1*H_3 + (m_1 - 1)*H_1
//and substituting the values for enthalpy balance around seperator we get
//m_1*H_3 = (1)*(-122.6) + (m_1 - 1)*77.8
//H_3 = ((1)*(-122.6) + (m_1 - 1)*77.8)/m_1
//Substituting the expression for 'H_3' in the above equation and then solving for m_1, we get
deff('[y]=f(m_1)','y=m_1*H_2+(m_1-1)*(H_6)-m_1*(((1)*(-122.6) + (m_1 - 1)*77.8)/m_1)-(m_1-1)*H_1');
m_1 = fsolve(4,f);//[kg]
//Thus to liquify 1 kg of air compression of m_1 kg of air is carried out.

//Now substituting this value of m_1 to get the value of H_3,
H_3 = ((1)*(-122.6) + (m_1 - 1)*77.8)/m_1;//[kJ/kg]

//From given compressed air table we see at 200 bar and 160 K,
H_3_1 = 40.2;//[kJ/kg]

//At 200 bar and 180 K,
H_3_2 = 79.8;//[kJ/kg]
//By interpolation we get,
T_3 = ((H_3 - H_3_1)*(180 - 160))/(H_3_2 - H_3_1) + 160;//[K]

printf("Temperature before throttling is %f",T_3);
