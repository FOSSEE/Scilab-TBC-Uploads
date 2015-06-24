clc
//initialization of new variables
clear
b=4 //m   wide
c=0.5 //m   chord
a=5 //degrees   angle of inclination
u=12 //m/s  speed
r=1030 //kg/m^3  density
//calculations
a=a*%pi/180
AR=b/c
Cla=2*%pi/(1+2/AR)
Cl=Cla*a
W=Cl*0.5*r*u^2*b
Cdi=Cl^2/(%pi*AR)
Di=0.5*Cdi*r*u^2*b
P=Di*u
printf('The power required is %.2f kW',P/1000)
printf('\n The weight of the boat is %.d N',W)
