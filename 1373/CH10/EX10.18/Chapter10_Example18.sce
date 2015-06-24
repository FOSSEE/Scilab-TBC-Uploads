//Chapter-10, Example 10.18, Page 432
//=============================================================================
clc
clear

//INPUT DATA
D=0.2;//Outer diameter of the pipe in m
Ta=30+273;//Temperature of the air in K
Ts=400+273;//Surface temperature in K
e=0.8;//Emissivity of the pipe surface
D1=0.4;//Diamter of brick in m
e1=0.91;//Emissivity of brick

//CALCULATIONS
Q=(e*3.14*D*5.67*10^-8*(Ts^4-Ta^4))/1000;//Loss of heat by thermal radiation in kW/m
e2=(1/((1/e)+((D/D1)*((1/e1)-1))));//Equivalent emissivity
Q1=(e2*3.14*D*5.67*10^-8*(Ts^4-Ta^4))/1000;//Heat loss when brick is used in kW/m
r=(Q-Q1)*1000;//Reduction in heat loss in W/m

//OUTPUT
mprintf('Loss of heat by thermal radiation is %3.1f*10^3 W/m \nReduction in heat loss is %3.0f W/m',Q,r)

//=================================END OF PROGRAM==============================
