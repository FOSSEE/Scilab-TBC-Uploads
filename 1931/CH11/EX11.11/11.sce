clc
clear
//INPUT DATA
l=1*10^-3//length of rectangular plane sheet of doped silicon in m
b=1*10^-3//breadth of semi rectangular plane sheet of doped silicon in m
t=0.5*10^-3//thickness of rectangular plane sheet of doped silicon in m
RH=1.25*10^-3//Hall coefficient of the materialin m^3 C^-1
I=1*10^-3//current in A
B=0.7//magnetic flux density in Wb/m^2
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
Vh=((RH*I*B)/t)/10^-3//The hall coefficient measured by the probes in mV

//OUTPUT
printf('The hall coefficient measured by the probes is %3.2f mV',Vh)
