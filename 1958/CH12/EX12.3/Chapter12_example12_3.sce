clc
clear
//Inut data
R=[2,3,4]//Resistances from circuit diagram 12.37(a) on page no.194 in ohms
V=5//Voltage in V from circuit diagram 12.37(a) on page no.194

//Calculations
RN=((R(1)+R(2))*R(3))/(R(1)+R(2)+R(3))//Equivalent resistance in ohms
IN=V/(R(1)+R(2))//Equivalent current in A

//Output
printf('Nortons equivalent resistance is %3.2f ohms \n Nortons equivalent current is %i A',RN,IN)
