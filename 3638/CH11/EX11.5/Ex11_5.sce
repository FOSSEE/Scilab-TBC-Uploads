//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 11.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
R1=0.3;//reflection coefficient of mirror 1
R2=0.3;//reflection coefficient of mirror 2
l=500e-4;//Distance between the two mirrors in cm
alpha=5e1;//average loss coefficient per unit length of resonator in cm^(-1)
Vth=alpha-log(R1*R2)/(2*l);//Corresponding threshold gain coefficient in cm^(-1)
mprintf("\n The threshold gain coefficient = %e cm^-1",Vth);//The answers vary due to round off error
