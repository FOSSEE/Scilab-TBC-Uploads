//Chapter-11, Example 11.4, Page 485
//=============================================================================
clc
clear

//INPUT DATA
Ts=10;//Surface temperature in degree C
p1=10;//Pressure of water in atm

//CALCULATIONS
hp=(5.56*Ts^0.4);//Heat transfer coefficient in kW/m^2.K
hp1=(5.56*(2*Ts)^3*p1^0.4);//Heat transfer coefficient in kW/m^2.K
hp2=(5.56*Ts^3*(2*p1)^0.4);//Heat transfer coefficient in kW/m^2.K
x1=(hp1/hp)/1000;//Ratio of heat transfer coefficients
x2=(hp2/hp)*100;//Ratio of heat transfer coefficients

//OUTPUT
mprintf('Heat transfer coefficient becomes%3.0f times the original value in the first case \nHeat transfer coefficient is increased only by 32 percent in the second case',x1)

//=================================END OF PROGRAM==============================
