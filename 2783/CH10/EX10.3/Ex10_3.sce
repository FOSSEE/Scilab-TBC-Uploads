clc
//initialization of new variables
clear
M=1
T0=300 //k
P0=4 //atm
gama=1.4
//calculations
Tr=1+(gama-1)*M^2/2
Pr=Tr^(gama/(gama-1))
P=P0/Pr
T=T0/Tr
//results
printf('At the section:')
printf('\n Pressure is %.2f atm',P)
printf('\n Temperature is %.2f K',T)
