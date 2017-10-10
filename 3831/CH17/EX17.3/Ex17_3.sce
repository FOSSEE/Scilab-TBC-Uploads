// Example 17_3
clc;funcprot(0);
// Given data
m_h=80.0;// kg
m_m=0.008;// kg

// Solution
BMRbym_human=293*(m_h^-0.25);// kJ/kg.d
BMRbym_mouse=293*(m_m^-0.25);// kJ/kg.d
printf("\nThe BMR per unit mass of an 80.0 kg human,(BMR/m)_human=%2.0f kJ/kg.d \nThe BMR per unit mass of an 8.00 gram mouse,(BMR/m)_mouse=%3.0f kJ/kg.d",BMRbym_human,BMRbym_mouse);
