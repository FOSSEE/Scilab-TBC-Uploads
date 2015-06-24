
clc
//initialization of variables
D2 = 5*10^-6 // The diffusion co efficient of the new compound in cm^2/sec
Nu = 3 // The factor
D1 = 0.7*10^-5 // The diffusion co efficient of the original compound in cm^2/sec
c2l = 1.5*10^-5 // the new solubility in mol/cc
c1l = 3*10^-7 // The old solubility in mol/cc
//Calculations
k = 1 + ((D2*c2l)/(Nu*D1*c1l))// The number of times the rate has increased to the previous rate
//Results
printf("There is about a %.f fold increase in rate",k)
