clc
//initialisation of variables
n= 1/1000
T= 60 //degrees
T1= 100 //degrees
//CALCULATIONS
r= T-n*T^2
r1= T1-n*T1^2
tl= r*100/r1
//RESULTS
printf (' liquid temperature= % 1f C',tl)
