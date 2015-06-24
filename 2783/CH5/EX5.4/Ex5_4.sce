clc
//initialization of new variables
clear
h1=0.2 //mm  gap
hr=2.2   //gap ratio
u=50 //m/s   linear velocity
mu=1.8*10^-5  // Coefficient of Viscocity 
l=1 //cm   Length of the magnetic pickup
//calculations
l=l*10^-2
h1=h1*10^-3
L=0.16*mu*u*(l/h1)^2
R=4.7*h1/l
//results
printf('Lift = %.2f N/m',L)
printf('\n Drag to Lift ratio = %.3f ',R)
