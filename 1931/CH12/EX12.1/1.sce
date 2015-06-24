clc
clear
//INPUT DATA
M1=202//mass number of mercury
a=0.50//coefficient of mass number
T1=4.2//temperature in k for mass number 200
M2=200//mass number of mercury

//CALCULATION
T2=((M1/M2)^a)*T1//The transition temperature for the isotope of mercury of mass number 200 in k

//OUTPUT
printf('The transition temperature for the isotope of mercury of mass number200 is %3.4f k',T2)
