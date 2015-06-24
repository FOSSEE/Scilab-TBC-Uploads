clc
clear
//Input data
R=[4,12,2,12]//Resistances from circuit diagram 12.20 on page no.180 in ohms
V=12//Voltage in V from circuit diagram 12.20 on page no.180

//Calculations
RN=((R(1)+R(3))*R(2))/(R(1)+R(3)+R(2))//Equivalent resistance in ohms
IN=(V/(RN+R(3)))//Equivalent current in A

//Output
printf('Nortons equivalent resistance is %i ohms \n Nortons equivalent current is %i A',RN,IN)
