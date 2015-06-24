clc
//initialisation of variables
T2=300///k
T1=900//k
T3=600//k
Q2=15000//k.cal
Q1=12000//k.cal
//CALCULATIONS
na=1-(T2/T1)
nb=1-(T2/T3)
w1=Q1*na
w2=Q2*nb
//results
printf(' \n w1= % 1f kcal',w1)
printf(' \n w2= % 1f kcal',w2)
