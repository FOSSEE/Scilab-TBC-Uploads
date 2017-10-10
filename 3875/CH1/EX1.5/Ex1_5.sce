clc;
clear;
phi=45 //since the EMF is ahead of the current by 55-10 in degree
omega=3000 //frequency in radian/s
L=0.01 //inductance in H
E0=141.4
I0=5

//calculation
Z1=sqrt(2) //*R first equation for Z
Z2=E0/I0//second equation for Z
R=Z2/Z1 //resistance in ohm 
L_omega=L*omega //in ohm
C=1/((L_omega-R)*omega)

mprintf("Resistance is = %d ohm\n",R) //The answers vary due to round off error
mprintf("Capacitance is = %2.2e F\n",C)
