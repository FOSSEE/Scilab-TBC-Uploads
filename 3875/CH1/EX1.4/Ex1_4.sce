clc;
clear;
omega=500 //frequency in radian/s
L=0.08 //inductance in H
R=15 //resistance in ohm
C=30*10^-6 //capacity in F

//calculation

L_omega=L*omega //in ohm
C_omega=1/(C*omega) //in ohm 
tan_phi=(L_omega-C_omega)/R //in degrees
phi=atand(tan_phi)

mprintf("The current leads the applied voltage by = %2.2f degree",-phi)
//The answers vary due to round off error
