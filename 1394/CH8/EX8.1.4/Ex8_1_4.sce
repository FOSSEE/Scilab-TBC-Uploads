

clc
//initialiazation of variables
rin = 0.05 // initial radius of oxygen bubble in cm
rf = 0.027 //final radius of oxygen bubble in cm
tin = 0 // initial time in seconds
tf = 420 // final time in seconds
c1 = 1/22.4 // oxygen concentration in the bubble in mol/litres
c1sat = 1.5*10^-3 // oxygen concentration outside which is saturated in mol/litres
//Calculations
k = -((rf-rin)/(tf-tin))*(c1/c1sat)
//Results
printf("The mass transfer co efficient is %.1e cm/sec",k)

