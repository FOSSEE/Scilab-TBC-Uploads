//Chapter-4, Example 4.14, Page 144
//=============================================================================
clc
clear
//given voltage applied is 100*sin(w*t)
//CALCULATIONS
R=10;//resisitance in ohms
//i=(100)*sin(w*t)/10=10*sin(w*t)
//instantaneous power=1000*(sin(w*t))^2
E=(100)/sqrt(2);//average value of voltage in volts
I=(10)/sqrt(2);//average value of current in amps
P=E*I;//average power in Watts
mprintf("thus average power is %1.0f W",P);
//=================================END OF PROGRAM==============================

