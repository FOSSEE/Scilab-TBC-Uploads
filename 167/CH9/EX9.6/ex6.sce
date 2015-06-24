//ques6
//An Actual Gas-Turbine Cycle
clear
clc
ws=244.16;//kJ/kg
nc=0.80;//compressor efficiency
Win=ws/nc;//work input in kJ/kg
nt=0.85;//Turbine efficiency
ws2=606.60;
Wout=nt*ws2;//work output in kJ/kg
Rbw=Win/Wout;//back work ratio
printf('(a) Back work ratio = %.3f \n',Rbw);
//(b) now air leaves the compressor at a higher temperature and enthalpy
h1=300.19;//enthalpy of heat state 1 in kJ/kg
h2a=h1+Win;//enthalpy of heat(a) in kJ/kg
h3=1395.97;//enthalpy of heat at state 3 in kJ/kg
Qin=h3-h2a;//heat input in kJ/kg
Wnet=Wout-Win;//net work done in kJ/kg
nth=Wnet/Qin;//thermal efficiency
printf(' (b) Thermal Efficiency = %.3f \n',nth);
//The air temperature at the turbine exit is determined from an energy balance on the turbine
h4a=h3-Wout;//enthalpy of heat(a) at state 4 in kJ/kg
//Now from table 17
T4a=853;//temperature(a) at state 4 in K
printf(' (c) Temperature T4a = %.0f K',T4a);
