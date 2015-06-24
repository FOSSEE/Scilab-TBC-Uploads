clc
//initialisation of variables
T= 300 //K
P= 100 //kPa
r= 4
T1= 1200 //K
m= 5 //kg/s
k= 1.4
R= 8.314 //jmol K
M= 29 //gms
//CALCULATIONS
T2= T*r^((k-1)/k)
T4= T1/r^((k-1)/k)
n= 1-(T/T2)
wnet= (k*R/((k-1)*M))*(T1-T4+T-T2)
P= m*wnet
e= sqrt((T2-T)/(T1-T4))
T5= T+((T2-T)/e)
T6= T1+e*(T4-T1)
//RESULTS
printf (' efficiency= %.4f ',n)
printf (' \n power= %.f kW',P)
printf (' \n efficiency= %.4f ',e)
printf (' \n temperature at the exit= %.1f K',T6)
