clear
clc
//to find minimum rate of energy to be supplied to the heat pump

//Given:
//outside temperature
TL = -10//in degree celsius
//interior temperature
TH = 22//in degree celsius
//heat transfer
QH = 16//in KW

//Solution:
//applying laws of thermodynamics
//applying formula for refrigeration cycle
//coefficient of performance
K = (TL+273)/((TH+273)-(TL+273))//taking temperature in K
//minimum rate of energy to be supplied to the heat pump
W_by_deltat = QH/(K+1)//in KW

printf ("\n\n Coefficient of performance K = \n\n %.2f" ,K);
printf ("\n\n Minimum rate of energy to be supplied to the heat pump W_by_deltat = \n\n %.1f KW" ,W_by_deltat);
