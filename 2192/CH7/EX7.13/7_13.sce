clc,clear
printf('Example 7.13\n\n')

CE_Ag=107.98; CE_Al=27/3; //chemical equivalents

//Electrochemical equivalents
ECE_Ag=0.00111*10^-3 //in kg/C
ECE_Al=ECE_Ag * (CE_Al/CE_Ag)

current_efficiency=92/100
I=3000 //average current in A
t=24*3600 //duration of flow of current in seconds
m_al=ECE_Al*I*t*current_efficiency 
printf('Mass of aluminium produced = %.3f kg',m_al)
