clc
clear
//Inut data
R=[4,5,6]//Resistances from circuit diagram 12.22 on page no.181 in ohms
I=2//Current in A from circuit diagram 12.22 on page no.181

//Calculations
RN=(R(1)+R(2)+R(3))//Equivalent resistance in ohms
IN=(R(1)*I)/RN//Equivalent curren in A

//Output
printf('Nortons equivalent resistance is %i ohms \n Nortons equivalent current is %3.3f A',RN,IN)
