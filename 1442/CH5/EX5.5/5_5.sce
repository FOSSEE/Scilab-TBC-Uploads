clc
//initialisation of variables
p1= 300 //kPa
V1= 0.03 //m^3
V2= 0.08 //m^3
T1= 27 //C
//CALCULATIONS1
T2= T1+273
p2= p1*(V1/V2)*(T2/(T1+273))
W= 0
Q= 0
//RESULTS
printf (' final temperature = %.2f K',T2)
printf (' \n final pressure = %.1f kPa',p2)
printf (' \n work = %.f kJ',W)
printf (' \n energy = %.f kJ',Q)
 
