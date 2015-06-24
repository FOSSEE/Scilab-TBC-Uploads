clc
//initialisation of variables
n= 0.5
T= 75 //F
P= 14.7 //psia
pg= 0.4298 //psia
pw= 0.2149 //psia
//CALCULATIONS
pw1= n*pg
pa= P-pw1
r= 0.622*pw/pa
//RESULTS
printf ('relative humidity= %.5f lb water/lb dry air',r)
