clc
clear
//Input data
R=[6,6,3]//Resistances in the circuit from circuit diagram 12.9 on page no. 175 in ohms
V=[24,16]//Voltages in the circuit from circuit diagram 12.9 on page no. 175 in V

//Calculations
Re1=1/((1/R(2))+(1/R(3)))//Equivalent resistance for parallel combination in ohms
Re=R(1)+Re1//Equivalent resistance of the ciriuit in ohms
I1=(V(1)/Re)//Current across the resistors in A
pd=(I1*Re1)//Potential difference across A and B from circuit diagram 12.9 on page no. 175 in V
I2=(pd/R(3))//Current across 3 ohms resistance in A
I3=(V(2)/(R(1)+R(2)))//Current in A
I=I2+I3//Total current

//Output
printf('The current shown in the circiut is %3.1f A',I)
