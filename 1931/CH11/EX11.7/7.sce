clc
clear
//INPUT DATA
l=12*10^-3//length of semi conductor crystal in m
b=1*10^-3//breadth of semi conductor crystal in m
t=1*10^-3//thickness of semi conductor crystal in m
I=20*10^-3//current in A
Vh=37*10^-6//voltage measured across the width in V
B=0.5//magnetic flux density in Wb/m^2
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
RH=((Vh*t)/(I*B))/10^-6//Hall coefficient of semiconductor in C^-1 m^3 *10^-6
ne=(1/(RH*10^-6*e))/10^23//The density of the charge carrier in electrons/m^3*10^23

//OUTPUT
printf('Hall coefficient of semiconductor is %3.1f*10^-6 C^-1 m^3\n The density of the charge carrier is %3.2f*10^23 electrons/m^3',RH,ne)
