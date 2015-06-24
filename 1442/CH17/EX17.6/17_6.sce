clc
//initialisation of variables
W= 0
Q= 0
R= 8.314 //J/mol K
T0= 300 //K
x= 5/13
n1= 0.5 //kmol/s
n2= 0.8 //kmol/s
//CALCULATIONS
W1= (n1+n2)*R*T0*(x*log(1/x)+(1-x)*log(1/(1-x)))
I= W1
//RESULTS
printf (' useful work of the process= %.f kW',W) 
printf (' \n heat interaction= %.f kW',Q) 
printf (' \n maximum work= %.1f kW',W1) 
printf (' \n irreversibility= %.1f kW',I)
