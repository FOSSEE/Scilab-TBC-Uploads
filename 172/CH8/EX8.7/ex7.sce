//example 7
//work and heat transfer
clear
clc
P2=500  //final pressure in cylinder in kPa
P1=100 //initial pressure in cylinder in kPa
T1=20+273.2 //initial temperature inside cylinder in Kelvins
n=1.3 
T2=(T1)*(P2/P1)^((n-1)/n) //final temperature inside cylinder in K
R=0.2968 //gas constant in kJ/kg-K
w12=R*(T2-T1)/(1-n) //work in kJ/kg
Cvo=0.745 //specific heat at constant volume in kJ/kg-K
q12=Cvo*(T2-T1)+w12 //heat transfer in kJ/kg
printf(" \n hence,work done is w12=%.1f kJ/kg.\n",w12)
printf("\n and heat transfer are q12=%.1f kJ/kg.\n",q12)