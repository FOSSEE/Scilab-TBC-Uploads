clc
clear

//Input data
W=20000 //Power developed in kW
m=12 //Mass flow rate in kg/s
C1=50 //Velocity of air entering in m/s
T1=700+273 //Temperature of air entering in K
T2=298 //Temperature of air leaving in K
C2=125 //Velocity of air leaving in m/s
Cp=1.005 //Specific heat capacity at constant pressure in kJ/kg-K

//Calculation
dh=Cp*(T2-T1) //Change in enthalpy in kJ/kg
Q=((m*dh)+W-(m*(1/2000)*(C2^2-C1^2))) //The rate of heat transfer in kJ/s

//Output
printf('The rate of heat transfer is %3.2f kJ/s',Q)
