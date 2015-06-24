//example 6
//work done by air
clear
clc
T1=600 //initial temperature of air in K
P1=400 //intial pressure of air in kPa
P2=150 //final pressure in kPa
u1=435.10 //specific internal energy at temperature T1 in kJ/kg
sT1=7.5764 //specific entropy at temperature T1 in kJ/kg-K
R=0.287 //gas constant in kJ/kg-K
ds=0
sT2=ds+sT1+R*log(P2/P1) //specific entropy at temperature T2 in kJ/kg-K
disp('we know the values of s and P for state 2.So,in order to fully determine the state,we will use steam table')
T2=457 //final temperature in K
u2=328.14 //specific internal energy at temperature T2 in kJ/kg
w=u1-u2 //work done by air in kJ/kg
printf("\n hence,work done by air is w=%.2f kJ/kg.\n",w)