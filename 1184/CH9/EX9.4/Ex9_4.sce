//Example 9-4, Page No - 326

clear
clc

Tc=32.2
Tk=273+Tc
B =30*10^3
k =1.38*10^-23

Pn=k*Tk*B

printf('The average noise power is %.2f*10^-16 W',Pn*10^16)
