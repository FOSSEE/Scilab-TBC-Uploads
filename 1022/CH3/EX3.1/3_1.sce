clc
//initialisation of variables
T1= -3 //degrees
T2= 650 //Rankine
T3= 650 //Rankine
//CALCULATIONS
t1= (9/5)*T1+32
t2= T2-459.67
t21= (5/9)*(t2-32)
t3= t21+273.15
//RESULTS
printf ('T= %.2f F',t1)
printf (' \n T= %.2f C',t21)
printf (' \n T= %.2f K',t3)
