clc
clear
//Initalization of variables
disp("From table 5-4,")
a=1 //moles of C6H6
b=7.5 //moles of O2 in reactant
c=1.875 //moles of excess O2
d=35.27 //moles of N2
e=3 //moles of H2O
flow=40 //lb/min
w=1360850 //Btu/mol
//calculations
U11=a*337
U12=(b+c)*85
U13=d*82
U14=(a+b+c+d)*1066
Ua1=U11+U12+U13+U14
U21=c*2539
U22=d*2416
U23=e*3009
U24=2*e*3852
U25=(c+d+e+2*e)*1985
Ua2=U21+U22+U23+U24+U25
Q=Ua1+w-Ua2
fuel=flow/(6*12+2*e)
Q2=Q*fuel
//results
printf("Heat removed = %d Btu/min",Q2)
disp("The answers might differ a bit from textbook due to rounding off error.")
