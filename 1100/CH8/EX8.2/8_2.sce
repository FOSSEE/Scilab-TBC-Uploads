clc
//initialisation of variables
T1= 1050 //F
T2= 90 //F
//CALCULATIONS
n= (T1-T2)/(T1+460)
n1= n*100
//RESULTS
printf ('Maximum thermal efficiency  = %.f percent',n1)
