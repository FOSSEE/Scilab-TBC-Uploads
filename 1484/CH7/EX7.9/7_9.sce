clc 
//initialisation of variables
i= 1/1000
d= 4 //ft
C= 125
k= 0.95
o= 5.372
//CALCULATIONS
h= k*d
A= d^2*(o-sind(o*180/%pi))/8
P= (d/2)*o
m= A/P
V= C*sqrt(m*i)
Q= V*A
//RESULTS
printf ('Discharge= %.2f cuses',Q)
