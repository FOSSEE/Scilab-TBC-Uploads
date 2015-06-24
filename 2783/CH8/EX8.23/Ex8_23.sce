clc
//initialization of new variables
clear
m=250 //tonne  Weight
b=64.4 //m    wing span
S=541 //m^2   Wing area
c=8.4 //m    Wing chord
r=1.1 //kg/m^3   Air density
u=600 //km/h    air speed
g=9.8 //m/s^2  Acceleration due to gravity
//calculations
u=u/3.6
Cl=m*g*1000/(0.5*r*u^2*S)
AR=b^2/S
Cla=2*%pi/(1+2/AR)
aa=Cl/Cla
aa=aa*180/%pi
//results
printf('Airplane angle of attack is %.1f degrees',aa)
printf('\n Lift slope is %.2f ',Cla)
