//Example 2_1_u2
clc();
clear;
//To calculate the density of electrons and mobility of electrons in silver
row=10.5*10^3       //units in Kg/m^3
NA=6.023*10^23          //Avagadro number
Z=1
MA=107.9*10^-3         //units in Kg
n=(row*NA*Z)/MA        //units in m^-3
printf("The number density of electrons is n=")
disp(n)
printf("m^-3")
row=6.8*10^7         //units in ohm^-1 metre^-1
n=5.86*10^28         //units in m^-3
e=1.6*10^-19  
u=(row)/(n*e)
printf("\nThe conductivity is u=")
disp(u)
printf("m^2 V^-1 sec^-1")
