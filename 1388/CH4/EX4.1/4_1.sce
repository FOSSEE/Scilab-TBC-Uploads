clc
//initialisation of variables
T = 100 //C
T1= 25 //C
T2= 150 //C
T3= 357 //C
T4= 500 //C
T5= 2000 //C
T6= 5*10^6
T7= 1000 //C
//CALCULATIONS
e= (T-T1)/(T+273)
e1= (T2-T1)/(273+T2)
e2= (T3-T)/(273+T3)
e3= (T5-T4)/(T5+273)
e4= (T6-T7)/T6
//RESULTS
printf (' maximum efficiency = %.2f ',e)
printf (' \n maximum efficiency = %.2f ',e1)
printf (' \n maximum efficiency = %.2f ',e2)
printf (' \n maximum efficiency = %.2f ',e3)
printf (' \n maximum efficiency = %.2f ',e4)
