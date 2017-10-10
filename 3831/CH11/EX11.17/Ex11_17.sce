// Example 11_17
clc;funcprot(0);
// Given data
m_A=1.00;// lbm
p_A=1.00;// psia
T_A=200;// °F
m_B=5.00;// lbm
p_B=5.00;// psia
T_B=400;// °F

// Calculation
T_2=((m_A*(T_A+459.67))+(m_B*(T_B+459.67)))/(m_A+m_B);// R
T_2=T_2-459.67;// °F
p_2=((m_A+m_B)*(T_2+459.67))/(((m_A*(T_A+459.67))/p_A)+((m_B*(T_B+459.67))/p_B));// psia
printf("\nThe final temperature,T_2=%3.0f°F \nThe final pressure,p_2=%1.2f psia",T_2,p_2);
