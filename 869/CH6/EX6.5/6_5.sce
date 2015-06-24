clc
//initialisation of variables
W= 100 //lb
n1= 1/2
n2= 3/2
mus= 0.40
//CALCULATIONS
Ts1= W/(exp(mus*n1*2*%pi))
Ts2=  W/(exp(mus*n2*2*%pi)) 
//RESULTS
printf ('Ts1= %.2f lb',Ts1)
printf (' \n Ts2=%.2f lb',Ts2)
