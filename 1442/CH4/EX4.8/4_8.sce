clc
//initialisation of variables
T= 250 //C
T2= 300 //C
v300= 0.6548 //m^3/kg
v250= 0.591 //m^3/kg
v= 0.6 //m^3/kg
u= 3000 //kJ/kg
u250= 2726.1 //kJ/kg
u300= 2804.8 //kJ/kg
T1= 510.30 
u2= 3145.26 //kJ/kg
p= 0.4 //Mpa
p2= 0.2 //Mpa
//CALCULATIONS
T1= T1+((v-v250)/(v300-v250))*(T2-T)
u1= u250+((v-v250)/(v300-v250))*(u300-u250)
du= u1-u
p1= p+((u-u1)/(u2-u1))*p2
//RESULTS
printf ('pressure = %.3f Mpa',p1)
printf ('\n temperature = %.f C',T2)