clear
clc
//initialisation of variables
r= 53.4
T= 60 //F
h= 29.7 //in of mercury
sm= 13.6
w= 62.4 //lb/ft^3
d= 1.5 //in
Qin= 2 //cuses
g=32.2 //ft/s^2
//CALCULATIONS
W= h*sm*w/(r*(460+T)*12)
dP= 0.75*w/(12*W)
Q= sqrt(2*g*dP)*%pi*d^2/(4*144)
W= Q*W*60
Cd= Qin/W
//RESULTS
printf ('coefficient of discharge = %.2f ',Cd) 
