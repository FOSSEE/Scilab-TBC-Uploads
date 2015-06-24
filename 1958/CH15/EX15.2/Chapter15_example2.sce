clc
clear
//Input data
v=(5*10^6)//Velocity of the electron in m/s
E=2000//Intensity of electric field in N/C
d=0.06//Distance in m
e=(1.6*10^-19)//Charge of the electron in C
m=(9.1*10^-31)//Mass of the electron in kg


//Calculations
y=((-e*E*d^2)/(2*m*v^2))*100//Vertical displacement of the electron when it just leaves the electric field in cm

//Output
printf('Vertical displacement of the electron when it just leaves the electric field is %3.2f cm',y)
