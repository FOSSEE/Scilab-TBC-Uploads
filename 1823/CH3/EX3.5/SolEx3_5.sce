//Find the required value of RB.
//Solved Example Ex3.5 page no 84
clear
clc
Vbb=6           //V
Vbeq=0.7        //V
Ibq=40//10^-6
Rb=((Vbb-Vbeq)/Ibq)*1000
printf("\n  Rb = %0.1f  k ohm",Rb)
