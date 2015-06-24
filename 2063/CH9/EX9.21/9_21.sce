clc
clear
//Input data
P1=1;//Atmospheric pressure in bar
P4=60;//Delivery pressure in bar
T1=303;//Initial temperature in K
n=1.3;//Index of compression
Cp=1.005;//Specific heat of air at constant pressure in kJ/kg K
S=3;//Number of stages

//Calculations
P2=P1*(P4/P1)^(1/3);//Intermediate pressure in bar
T2=T1*(P2/P1)^((n-1)/n);//Temperature of air entering the intercoolers in K
H=Cp*(T2-T1);//Heat rejected in each intercooler in kJ

//Output
printf('Amount of heat rejected in each intercooler is %3.0f kJ',H)
