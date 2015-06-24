
clear;
clc;

printf("\t Example 9.4\n");

a=13600;        //desity difference,kg/m^3
s=0.487;       //surface tension,kg/s^2

L=2*%pi*(3^0.5)*(s/(9.8*a))^0.5*100;    //spacing wavelength,cm

printf("\t maximum spacing is : %.1f cm\n",L);
printf("\t actually this spacing would give the maximum rate of collapse.it can be shown that collapse would begin at 1/3^0.5 times this value or at 1.2 cm.")
//end