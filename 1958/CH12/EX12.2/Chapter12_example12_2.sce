clc
clear
//Input data
R=[3,5,6,7]//Resistances from circuit diagram 12.36(a) on page no. 193 in ohms
V=12//Voltage in V from circuit diagram 12.36(a) on page no. 193

//Calculations
Vth=(V*R(3))/(R(3)+R(4)+R(2))//Equivalent voltage in V
Rth=R(1)+(((R(2)+R(4))*R(3))/(R(2)+R(4)+R(3)))//Equivalent resistance in ohms

//Output
printf('Thevenin equivalent resistance is %i ohms \n Thevenin equivalent voltage is %i V',Rth,Vth)
