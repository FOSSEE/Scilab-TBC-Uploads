// Example 3.7, page no-119
clear
clc
//Part A
Vos=1.5*10^-3
Rf=1*10^6
R1=100*10^3
Vo=Vos*(1+Rf/R1)
Vo=Vo*1000
printf('Vo= %.1f mV',Vo)

//Part B
Iosch= 10*10^-9
Vosch=Iosch*Rf
Vosch=Vosch*1000
printf('\nChange in Vo= %.1f mV',Vosch)
printf('\n Worst case drift is 26.5 mV or -26.5 mV')



