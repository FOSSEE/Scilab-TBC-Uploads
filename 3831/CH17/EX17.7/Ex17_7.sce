// Example 17_7
clc;funcprot(0);
// Given data
m_m=0.0300;// kg
m_h=70.0;// kg
m_e=4000;// kg

// Calculation
Hr_m=241*(m_m^(-0.25));// Beats/min
Hr_h=241*(m_h^(-0.25));// Beats/min
Hr_e=241*(m_e^(-0.25));// Beats/min
Br_m=54*(m_m^(-0.25));// Beats/min
Br_h=54*(m_h^(-0.25));// Beats/min
Br_e=54*(m_e^(-0.25));// Beats/min
printf("\nThe heartbeat rates of the mouse, human, and elephant are\n(Heartbeat rate)_mouse=%3.0f Beats/min \n(Heartbeat rate)_house=%2.1f Beats/min \n(Heartbeat rate)_elephant=%2.1f Beats/min \nThe breathing rates of the mouse, human, and elephant are \n(Breathing rate)_mouse=%3.0f Breaths/min \n(Breathing rate)_human=%2.1f Breaths/min \n(Breathing rate)_elephant=%1.2f Breaths/min",Hr_m,Hr_h,Hr_e,Br_m,Br_h,Br_e);
