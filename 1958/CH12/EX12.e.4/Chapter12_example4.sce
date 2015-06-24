clc
clear
//Input data
R=[2,3,6]//Resistances from circuit diagram 12.15 on page no. 178 in ohms
I=2//Current in A from circuit diagram 12.15 on page no. 178

//Calculations
Rth=(R(2)+R(3))//Equivalent resistance in ohms
Vth=(R(3)*I)//Equivalent voltage in V

//Output
printf('Thevenin equivalent resistance is %i ohms \n Thevenin equivalent voltage is %i V',Rth,Vth)
