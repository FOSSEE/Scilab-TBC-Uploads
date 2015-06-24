clc
clear
//Initialization of variables
n1=8 //Moles of CO2
n2=9 //Moles of H2O
n3=1 //Moles of Octane
n4=12.5 //Moles of Oxygen
disp("From Table B-10,")
U11=3852 //Internal energy at 1000 R of CO2
U12=115 //Internal energy at 537 R of CO2
U21=3009 //Internal energy at 1000 R of H2O
U22=101 //Internal energy at  537 R of H2O
U31=24773 //Internal energy at 1000 R of Octane
U32=640 //Internal energy at 537 R of Octane
U41=2539 //Internal energy at 1000 R of Oxygen
U42=83 //Internal energy at 537 R of Oxygen
H=-2203389 //heat Btu
//calculations
dU1=n1*(U11-U12)+n2*(U21-U22)
dU2=n3*(U31-U32)+n4*(U41-U42)
Q=H+dU1-dU2
//results
printf("Heat of reaction = %d Btu",Q)
disp("The answers are a bit different due to rounding off error in textbook.")
