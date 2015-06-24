clc
clear
//Input data
x=6//Thickness of the ice layer in cm
x1=(x+0.2)//Increase in thickness in cm
K=2.1//Thermal conductivity of ice in W/m.K
L=3.36*10^5//Latent heat of ice in J/kg
d=910//Density of ice at 0 degree C in kg/m^3
T=-(273-((20+273)))//Change of temperature in K

//Calculations
t=(d*L*(x1^2-x^2)*10^-4)/(2*K*T)//Time taken by ice to increase its thickness in sec

//Output
printf('Time taken by ice to increase its thickness from %i cm to %3.1f cm is %3.2f sec',x,x1,t)
