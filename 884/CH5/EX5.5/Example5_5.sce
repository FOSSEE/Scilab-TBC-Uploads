//Ideal Gas Equation

clear;
clc;

printf("\t Example 5.5\n");

V1=0.55;//volume, L
P1=1;//pressure at sea level, atm
P2=0.4;//pressurea at 6.5km height, atm

//n1=n2 and T1=T2 given hence P1V1=P2V2

V2=P1*V1/P2;

printf("\t the volume of He balloon at height 6.5km above sea level is : %4.1f L\n",V2);

//End
