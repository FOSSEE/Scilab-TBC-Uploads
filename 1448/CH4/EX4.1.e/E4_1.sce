clc
//Initialization of variables
Power=100 //W
time=1 //day
T=20 //C
//calculations
timeins=1*24*3600
qsurr=timeins*Power
Ssurr=qsurr/(T+273)
//results
printf('Heat transferred to surroundings = %d J',qsurr)
printf('\n Entropy production per day = %.2e J/k',Ssurr)
