clc
//initialisation of variables
m= 5000 //kg
cp= 1.4 //kJ/kg K
T2= 27.6 //K
T1= 22 //K
t= 40 //min
P= 20 //kW
//CALCULATIONS
H= m*cp*(T2-T1)
W= -P*t*60
Q= H+W
dT= -W/(m*cp)
//RESULTS
printf ('heat interaction = %.f kJ',Q)
printf ('\n temperature rise = %.2f C',dT)
