//calculating Ecell and energy
//Example 6.11
clc
clear
Ec=0.4
Ea=-0.87
Ecell=Ec-Ea
F=96500
Wmax=(2*F*Ecell)/1000
printf('Thus (i)Ecell = %2.2f V',Ecell)
printf('\n (ii)Wmax= %3.0f kJ',Wmax)
