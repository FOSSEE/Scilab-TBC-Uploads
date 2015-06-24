clc
//initialisation of variables
T= 25 //C
P= 1 //atm
v= 46 //m/s
d= 5 //cm
T1= 135 //C
d1= 0.998 //kg/m^3
k= 0.03 //W/m C
m= 2.08*10^-5 //Kg/s m
c= 0.024
n= 0.81
//CALCULATIONS
Tf= (T+T1)/2
D= d/100
Re= d1*v*D/m
h= c*Re^0.81*k/D
dt= T1-T
ql= h*%pi*D*dt
//RESULTS
printf ('Heat transfer rate per unit lenght of cylinder= %.f W/m',ql)
