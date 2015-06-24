clc
clear
//Input data
c1=40;//Velocity of air at the inlet of nozzle in m/s
h=180;//The decrease in enthalpy in the nozzle in kJ/kg
w=0;//Since adiabatic
q=0;//Since adiabatic
z=0;//Since adiabatic

//Calculations
c2=[(2*1000)*((h)+(c1^2/(2*1000)))]^(1/2);//The exit velocity of air in m/s

//Output
printf('The exit velocity of the air C2 = %3.2f m/s ',c2)
