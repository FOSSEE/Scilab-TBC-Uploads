clc
//Intitalisation of variables
clear
c= 0.01 //M
T= 25 //C
kw= 1.01*10^-14 
ka= 1.75*10^-5
//CALCULATIONS
x= sqrt(kw/(ka*c))
//RESULTS
printf ('Degree of hydrolysis = %.1e ',x)
