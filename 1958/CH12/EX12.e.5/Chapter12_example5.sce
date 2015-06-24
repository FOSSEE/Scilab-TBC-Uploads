clc
clear
//Input data
R=[12,8,3,6]//Resistances from circuit diagram 12.17 on page no.179 in ohms
V=12//Voltage in V from circuit diagram 12.17 on page no.179

//Calculations
Rth=((R(3)*R(1))/(R(3)+R(1)))+((R(2)*R(4))/(R(2)+R(4)))//Equivalent resistance in ohms
Vth=2.74//Thevenin voltage taken from the circuit diagram 12.19(a) on page no.179 in V

//Output
printf('Thevenin equivalent resistance is %3.2f ohms \n Thevenin equivalent voltage is %3.2f V',Rth,Vth)
