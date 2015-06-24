clc
//initialisation of variables
clear
q= 26.45 //coloumbs
e= 2.432 //volts
//CALCULATIONS
Q1= q*e
Q2= Q1*1.0002*10^7
//RESULTS
printf ('Energy expenditure in joules = %.2f int.joules',Q1)
printf ('\n Energy expenditure in ergs = %.2e ergs',Q2)
