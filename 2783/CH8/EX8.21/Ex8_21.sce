clc
//initialization of new variables
clear
m=100 //tonne
u=200 //km/h
b=47 //m
r=1.22 //kg/m^3
g=9.8 //m/s^2
//calculations
gama=m*1000*g/(r*u/3.6*b)
w=2*gama/(%pi*b/2)
//results
printf('Downwash = %.2f m/s',w)
