clc;
clear;
h=6.63*10^-34 //plancks constant in J-s
c=3*10^8 //velocity of light in m/s
lambda=180*10^-9 //wavelength in m 
W=2*1.6*10^-19 //work function in Joule
m=9.1*10^-31 //mass in kg
e=1.6*10^-19 //charge in C
B=5*10^-5 //magnetic flux density in Tesla

//calculation
E=((h*c)/lambda)-W //kinetic energy in J
v=sqrt((2*E)/m) //velocity in m/s
r=(m*v)/(e*B)

mprintf("The radius of the circular path in magnetic field is = %1.3f m",r)
