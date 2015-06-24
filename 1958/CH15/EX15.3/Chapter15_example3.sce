clc
clear
v=(4*10^5)//Velocity of the positively charged particle in m/s
E=300//Intensity of electric field in N/C
e=(1.6*10^-19)//Charge of the positively charged particle in C
m=(1.67*10^-27)//Mass of the positively charged particle in kg
q=35//Angle made by the particle in degrees

//Calculations
t=((v*sind(q)*m)/(e*E))/10^-6//Time required by the particle to reach the maximum height in the electric field in micro s

//Output
printf('Time required by the particle to reach the maximum height in the electric field is %3.2f micro s',t)
