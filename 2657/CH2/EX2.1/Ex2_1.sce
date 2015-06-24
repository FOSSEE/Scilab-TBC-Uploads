//Calculations on Carnot engine
clc,clear
//Given:
T2=27+273 //Temperature of cooling pond in K
eta=30 //Efficiency in percent
Q2=200 //Heat received by cooling pond in kJ/s
//Solution:
//Since, eta = (Q1-Q2)/Q1 = (T1-T2)/T1
T1=T2/(1-(eta/100)) //Temperature of heat source in K
Q1=Q2/(1-(eta/100)) //Heat supplied by source in kJ/s
Power=round(Q1-Q2) //Power of engine in kJ/s
//Results:
printf("\n Temperature of heat source, T1 = %.1f degreeC",T1-273)
printf("\n Power of engine = %d kW\n\n",Power)
