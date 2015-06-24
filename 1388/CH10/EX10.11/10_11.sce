clc
//initialisation of variables
pf2= 2.00 //mm Hg
y= 0.96 //mm Hg
Pn= 5 //mm Hg
//CALCULATIONS
pF2= pf2-y
pNO2= Pn-2*y
pNO2F= 2*y
//RESULTS
printf (' pressure of NO2= %.2f mm of Hg',pNO2)
printf (' \n pressure of NO2 after 30 sec= %.2f mm of Hg',pNO2F)
