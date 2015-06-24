clear;
clc;

//Example1.3[Heat Loss from Heating Ducts in a Basement]
//Given:-
T_in=60+273;//Temperature of hot air while entering the duct[K]
T_out=54+273;//Temperature of hot air while leaving the duct[K]
T_avg=(T_in+T_out)/2;//Average temperature of air[K]
Cp=1.007;//[kJ/kg]
disp("kJ/kg",Cp,"K is",T_avg,"The constant pressure specific heat of air at the average temperature of")
P=100;//Pressure of air while entering the duct[kPa]
R=0.287;//Universal Gas Constant[kPa.(m^3/kg).K]
v=5;//Average velocity of flowing air[m/s]
neta=0.8;//Efficiency of natural gas furnace
ucost=1.60;//Cost of natural gas in that area[$/therm],where 1therm=105,500kJ
//Solution;-
rho=P/(R*T_in);//The density of air at the inlet conditions is[kg/m^3]
Ac=0.20*0.25;//Cross sectional area of the duct[m^2]
m_=rho*v*Ac;//[kg/s]
disp("kg/s",m_,"mass flow rate of air through the duct is")
Q_loss=m_*Cp*(T_in-T_out);//[kJ/s]
disp("kJ/s",Q_loss,"The rate of heat loss by the air is")
cost=(Q_loss*3600)*(ucost)*(1/105500)*(1/neta);//[$/h]
disp("per hour",cost,"$"," Cost of heat loss to the home owner is")