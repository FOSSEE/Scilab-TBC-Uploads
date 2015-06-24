clc
//initialisation of variables
clear
g= 32.2 //ft/sec^2
t= 1 //hr
g1= 32.2 //ft/sec^2
g2= 32.2 //lbm ft/lbf
u= 2.4*10^-5 //lbf sec/ft^2
//CALCULATIONS
q2= g*(t*60*60)^2
go= g*(t*60*60)^2
q3= g/g2
u1= u/(t*60*60)
//RESULTS
printf ('q2 = %.2e lbm ft/lbf hr^2',q2)
printf ('\n go = %.2e lbm ft/lbf hr^2',go)
printf ('\n go = %.f slug ft/lbf sec^2',q3)
printf ('\n viscosity = %.2e lbf hr/ft^2',u1)
