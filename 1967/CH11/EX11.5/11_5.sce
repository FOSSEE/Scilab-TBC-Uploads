clc
//initialisation of variables
clear
T= 239.05 //K
r= 0.0242 //cal cc6-1 atm^-1
Vv= 269.1 //cc g^-1
Vl= 0.7 //cc g^-1
r1= 3.343 //cm of mercury deg6-1
p= 76 //cm
//CALCULATIONS
tbyp= r1/p
dH= T*(Vv-Vl)*tbyp*r
//RESULTS
printf ('heat of vapourisation of liquid chlorine = %.1f cal g^-1',dH)
