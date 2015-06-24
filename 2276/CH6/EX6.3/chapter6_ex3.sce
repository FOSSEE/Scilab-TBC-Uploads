clc
clear

//input
z1=12+(%pi*16);//impedance 1 in ohms
z2=10-(%i*10);//impedance 2 in ohms
//impedances 1 and 2 are in parallel
v=240;//supply voltage in volts

//calculations
zt=(z1*z2)/(z1+z2);//total impedance in ohms
Z=(((real(zt))^2)+((imag(zt))^2))^0.5;//current magnitude in amperes
i=v/zt;//supply current in amperes
I=(((real(i))^2)+((imag(i))^2))^0.5;//current magnitude in amperes

//output
mprintf('the magnitude of total impedance is %3.1f ohms and of the supply current is %3.1f A',Z,I)
