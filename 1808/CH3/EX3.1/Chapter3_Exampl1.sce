clc
clear
//INPUT DATA
Tl=30+273;//engine temperature in K 
Th=500+273;//maximum temperature in K

//CALCULATIONS
nc=((Th-Tl)/Th)*100;//Efficiency of carnot cycle in percentage

//OUTPUT
printf('Efficiency of carnot cycle is %3.2f percentage ',nc)
