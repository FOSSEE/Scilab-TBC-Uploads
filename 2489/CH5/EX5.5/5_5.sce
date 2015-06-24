clc
//Intitalisation of variables
clear
vp= 526 //mm
T= 90 //C
T1= 100 //C
hv= 542 //cal/gm
m= 18 //gm
//CALCULATIONS
p2= vp*10^(hv*m*(T1-T)/((273+T)*4.576*(273+T1)))
//RESULTS
printf ('Vapour pressure of water at 100 C = %.f mm',p2)
