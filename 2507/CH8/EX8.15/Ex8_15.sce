clc
clear
printf("Example 8.15 | Page number 231 \n\n");
//Evaluate the increse in unavailable energy due to irreversible heat transfer
//Given Data
T0 = 300 //K //Surrounding temperature
T1 = 1000 //K //Temperature of final reservoir
T2 = 600 //K //Temperature of intermediate reservoir
Q1 = 100 //kJ //Heat input
//Solution
printf("Increase in unavaliable energy due to irreversible heat transfer = %.1f kJ",Q1*(1-T0/T1)-Q1*(1-T0/T2)) 
