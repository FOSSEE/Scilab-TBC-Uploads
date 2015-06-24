

clc
//initialisation of variables
H=90//ft
dis=50//ft/sec
v=50//ft/sec
g= 32.2 //ft/sec^2
//CALCULATIONS
Vf=dis*4/(6.24*%pi)
Vw=g*(H-(Vf*Vf/(2*g)))/dis
a=atan(Vf/Vw)
t=atan(Vf/(Vw-dis))
work=(Vw*dis/g)
hp=10*v*work/550
//RESULTS
printf ('\n horse power required= %.1f ',hp)
