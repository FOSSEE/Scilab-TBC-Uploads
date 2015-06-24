clear
clc
//initialisation of variables
nm= 360
d= 1.5 //in
n= 100 
dp= 12 //in
vm= 4.8 //ft/sec
Tm= 52 //sec
T= 16 //lb-ft
t= 133 //lb ft
//CALCULATIONS
vp= n*dp*vm/(nm*d)
Tp= Tm*dp^2*vp^2/(d^2*vm^2)
N= Tm*vm*6080*100/(T*2*%pi*nm*60)
W= Tp*vp*65000/10.67
T1= W/(N*2*%pi*n*60)-t
//RESULTS
printf ('Speed of advance = %.2f knots ',vp)
printf ('\n Thrust = %.f lb ',Tp)
printf ('\n Efficiency = %.f per cent ',N)
printf ('\n Torque = %.f lb ft ',T1)

//The answer is a bit different due to rounding off error in textbook

