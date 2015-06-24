clc
clear
//Input data
Y=(7.25*10^10)//Youngs modulus of silver in N/m^2
K=(11*10^10)//Bulk modulus of silver in N/m^2

//Calculations
s=(3*K-Y)/(6*K)//Poissons ratio

//Output
printf('Poissons ratio for silver is %3.2f',s)
