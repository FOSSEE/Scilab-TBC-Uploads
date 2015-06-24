//Chapter-10, Example 10.14, Page 424
//=============================================================================
clc
clear

//INPUT DATA
A2=(6*2);//Area of windows in m^2
A1=(10*12);//Area of floor in m^2
Th=40;//Radiating heating panel in degree C
Tb=5;//Temperature of black plane in degree C
F12=0.052;//Shape factor

//CALCULATIONS
F12a=((A2-(A1*F12^2))/(A1+A2-(2*A1*F12)));//Shape factor
Q12=(A1*F12a*5.67*10^-8*((Th+273)^4-(Tb+273)^4));//Net heat exchange in W
X=(((A2/A1)-F12)/(1-F12));//X value for equilibrium temperature
T=(((Th+273)^4+(X*(Tb+273)^4))/(X+1))^0.25;//Equilibrium temperature in K

//OUTPUT
mprintf('Net heat exchange is %3.0f W \nEquilibrium temperature is %3.2f K',Q12,T)

//=================================END OF PROGRAM==============================
