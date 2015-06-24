clc
//initialisation of variables
W= 25 //Btu
W1= 100 //Btu
T1= 140 //R
T2= 0 //R
//CALCULATIONS
Th= T1+460
Tl= T2+460
nt= (Th-Tl)/Th
n= nt*100
//RESULTS
printf ('maximum theotrical efficiency= %.1f (Claim is not valid)',n)
