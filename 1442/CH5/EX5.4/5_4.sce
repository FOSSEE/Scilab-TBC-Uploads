clc
//initialisation of variables
T1= 200 //K
p= 600 //kPa
p1= 50 //kPa
n= 1.8
M= 4 //gms
k= 5/3
m= 0.007 //gms
R= 8.314 //J/mol K
//CALCULATIONS
T2= T1*(p/p1)^((n-1)/n)
W= m*R*(T1-T2)/((n-1)*M)
Q= ((n-k)*m*R*(T2-T1))/((n-1)*(k-1)*M)
//RESULTS
printf (' final temperature = %.2f K',T2)
printf (' \n work = %.3f kJ',W)
printf (' \n energy = %.3f kJ',Q)
