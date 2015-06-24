//Chapter-10, Example 10.8, Page 415
//=============================================================================
clc
clear

//INPUT DATA
Th=40;//Radiating heating panel in degree C
Tb=5;//Temperature of black plane in degree C
Tc=31;//Temperature of ceiling in degree C
A=(10*12);//Area in m^2

//CALCULATIONS
F56=0.075;//Using Fig.10.2 on page no. 408
F63=0.04;//Using Fig.10.2 on page no. 408
F12=0.052;//Shape factor
F1w=(1-F12);//Shape factor between the floor and all the walls but the window
Q12=(A*F12*5.67*10^-8*((Th+273)^4-(Tb+273)^4));//Heat exchange between the floor and window in W
Q1=(5.67*10^-8*A*((Th+273.15)^4-((F12*(Th+273.15)^4)-(F1w*(Tb+273.15)^4))))/1000;//Net heat given up by the floor in kW

//OUTPUT
mprintf('Heat exchange between the floor and window is %3.0f W \nNet heat given up by the floor is %3.1f kW',Q12,Q1)

//=================================END OF PROGRAM==============================
