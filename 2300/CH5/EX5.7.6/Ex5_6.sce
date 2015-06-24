
//scilab 5.4.1
//windows 7 operating system
//chapter 5:Semiconductor Junction Diodes
clc
clear
//T1,T2=Temperature in kelvin
//Is1=Reverse saturation current at temperature T1 in ampere
//Is2=Reverse saturation current at temperature T2 in ampere
//Is2=Is1*2^((T2-T1)/10)
//((T2-T1)/10)*log(2)=log(Is2/Is1)
//b=(Is2/Is1)
b=50
a=((10*log(b))/log(2))//a=(T2-T1)=rise in temperature in degree celcius
disp("C",a,"T2-T1")
