clc
clear
//Input data
l=3//Length of the wire in m
A=(6.25*10^-5)//Area in m^2
dl=(3*10^-3)//Increase in length in m
F=(1.2*10^3)//Tension in N

//Calculations
Y=((F*l)/(A*dl))/10^10//Young's modulus in N/m^2 *10^10

//Output
printf('Youngs modulus of the wire is %3.2f *10^10 N/m^2',Y)
