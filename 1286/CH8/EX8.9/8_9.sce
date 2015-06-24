clc
//initialisation of variables
L=80000//cal/kg
T1=27+273//k
T2=0+273//k
//CALCULATIONS
Q1=T1*L/T2
w=4.2*(Q1-L)
c=L/(Q1-L)
//results
printf(' \n coefficient of performance= % 1f ',c)
