// Example 3.21, page no-147
clear
clc

R1=10*10^3
R2=1*10^3
R3=1*10^3
Rf=50*10^3
I=1/(R2+R3)
Vi1=I*R2
Vo=Vi1*(1+ Rf/R1)
printf('Vout= %d V',Vo)
