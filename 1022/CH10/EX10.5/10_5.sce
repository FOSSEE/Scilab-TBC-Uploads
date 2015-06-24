clc
//initialisation of variables
P= 65 
T= 30 //C
T1= 10 //C
c= 4.19 //J/gm C
h= 41961
m= 185 //lt
//CALCULATIONS
Q= m*10^3*c*(T-T1)
M= (Q*100)/(h*P)
//RESULTS
printf ('Benzene required= %.f gm',M)
