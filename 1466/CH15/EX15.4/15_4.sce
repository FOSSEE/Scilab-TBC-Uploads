

clc
//initialisation of variables
clear
H=40//ft
r=10//ft
sp=75//rpm
Q=6000//ft^3/sec
r2=5//ft
c=0.95
th=30*%pi/180
ch=13.5//ft
cl=0.6
Cd=0.025
g=32.2//ft/sec^2
n=4
//CALCULATIONS
v=2*%pi*r*sp/60
Vf=Q/(%pi*c*(r^2-r2^2))
Vr=Vf/sin(th)
F=62.4*ch*Vr*Vr*[(cl*sin(th))-(Cd*cos(th))]/(2*g)
fo=F*2*%pi*sp/60
tw=fo*(r^2-r2^2)/(2)
tw4=tw*n/550
eff=tw*n*100/(62.4*H*Q)
//RESULTS
printf ('Horsepower = %.f ',tw4-95)
printf ('\n efficiency of turbine= %.1f per cent',eff-0.2 )
