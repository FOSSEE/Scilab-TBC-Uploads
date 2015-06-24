clc
clear
//Input data
m=2;//Mass flow rate of air in kg/s
t1=20;//Initial temperature of the air in degree centigrade
P=-30;//The amount of power consumed in kW
c1=100;//The inlet velocity of air in m/s
c2=150;//The outlet velocity of air in m/s
R=0.287;//The gas constant for air in kJ/kg-K
g=1.4;//It is the adiabatic index
cp=1.005;//Specific heat at constant pressure in kJ/kg-K
q=0;//Heat developed as it is adiabatic condition
z=0;//The change in potential energy is neglected

//Calculations
h=(P/m)+((c2^2-c1^2)/(2*1000));//The change in enthalpy of the system in kJ/kg
t=h/cp;//The change in temperature of the system in degree centigrade
t2=t1-t;//The exit air temperature in degree centigrade

//Output
printf('The exit air temperature is t2 = %3.2f degree centigrade ',t2)
