clc
//initialisation of variables
Twb= 22 //C
Tmin= 22.3 //C
w2= 0.0170 //kg/kg dry air
w1= 0.0093 //kg/kg dry air
//CALCULATIONS
m= w2-w1
//RESULTS
printf (' wet-bulb temperature= %.f C',Twb)
printf (' \n minimum temperature= %.f 1C',Tmin)
printf (' \n amount of water injected= %.4f kg/kg dry air',m)
