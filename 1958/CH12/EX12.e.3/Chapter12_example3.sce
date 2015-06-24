clc
clear
//Input data
R=[4,12,2,12]//Resistances from circuit diagram 12.12 on page no. 177 in ohms
V=12//Voltage in V from circuit diagram 12.12 on page no. 177

//Calculations
Rth=((R(1)+R(3))*R(2))/(R(1)+R(3)+R(2))//Equivalent resistance in ohms
Vth=(V*R(2))/(R(1)+R(3)+R(2))//Equivalent voltage in V
I=(Vth/(Rth+R(4)))//Current in A

//Output
printf('The current through the resistor is %3.1f A',I)
