clc
clear
//Input data
e=(1.6*10^-19)//Charge of the proton in C
m=(1.67*10^-27)//Mass of the proton in kg
B=0.8//Magnetic field strength in T
v=[4*10^6,3*10^6]//Velocity of charged particle in vxi+vyj form in m/s

//Calculations
p=(v(1)*2*3.14*m)/(e*B)//Pitch of the helix in m
R=(m*v(2))/(e*B)//Radius of the trajectory in m

//Output
printf('The pitch of the helix is %3.3f m \n Radius of the trajectory is %3.5f m',p,R)
