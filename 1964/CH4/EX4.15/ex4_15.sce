//Chapter-4, Example 4.15, Page 144
//=============================================================================
clc
clear
//given voltage applied is e=340*sin(314*t)
//given current applied is i=42.5*sin(314*t)
//CALCULATIONS
R=340/42.5;//resisitance in ohms
E=(340)/sqrt(2);//average value of voltage in volts
I=(42.5)/sqrt(2);//average value of current in amps
P=E*I;//average power in Watts
mprintf("thus average power is %1.0f W",P);
//=================================END OF PROGRAM==============================

