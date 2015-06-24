clc
clear
//Input data
R=[6,6,12]//Resistances from circuit diagram 12.34 on page no.192 in ohms
V=[5,2]//Voltage in V from circuit diagram 12.20 on page no.192

//Calculations
Re=((R(2)*R(3))/(R(2)+R(3)))+R(1)//Equivalent resistance in ohms for 5V supply
I=V(1)/Re//Equivalent current in A for 5V supply
Ve=((R(2)*R(3))/(R(2)+R(3)))*I//Voltage across 5V supply in V
I1=(Ve/R(3))//Current in A
Re2=(1/((1/(R(1)))+(1/(R(2)))))+R(3)//Equivalent resistance in ohms for 2V supply
I2=V(2)/Re2//Equivalent current in A for 2V supply
Ix=I1-I2//Current through 12 ohm resistance in A
Iy=1/Ix//For displaying output in fraction

//Output
printf('The current through %i ohm resistor is 1/%i A',R(3),Iy)
