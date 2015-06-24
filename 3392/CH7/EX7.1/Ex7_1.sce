clc
// initialization of variables
clear
E=200 //G Pa
Y=250 //M Pa
SF=1.9
w=1 //kN/m
L=3 //m
S_max=Y
// Calculations
E=E*10^9
Y=Y*10^6
w=w*10^3
Mx=-SF*w*L^2/2
S_max=S_max*10^6
k=2 // c_max=h/k
//Formula to be used
// S_max=abs(Mx)*c_max/Ix
// Note that c_max=h/2 and Ix=h^4/24
h=(abs(Mx)*24/(k*S_max))^(1/3)
printf('h = %.4f m',h)
