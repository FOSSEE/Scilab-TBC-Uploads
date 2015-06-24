clc
clear
//INPUT DATA
l=100*10^-3//length of silicon plate in m
b=10*10^-3//breadth of silicon plate in m
t=1*10^-3//thickness of silicon plate in m
I=10^-2//current in A
Vh=1.83*10^-3//voltage measured across the width in V
B=0.5//magnetic flux density in Wb/m^2

//CALCULATION
RH=((Vh*t)/(I*B))/10^-4//Hall coefficient of silicon plate in m^3 C^-1*10^-4

//OUTPUT
printf('Hall coefficient of silicon plate is %3.2f*10^-4 m^3 C^-1',RH)
