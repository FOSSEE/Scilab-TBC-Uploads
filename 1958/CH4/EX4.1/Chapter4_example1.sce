clc
clear
//Input data
w=4//Angular velocity in rad/s
m=[1,2,3,4]//Masses in kg from the figure 4.17 on page no.54 
r=[2.5,1.5]//Centre position in m

//Calculations
I=(m(1)+m(2)+m(3)+m(4))*(r(1)^2+r(2)^2)//Moment of inertia in kg.m^2
KE=(1/2)*I*w^2//Kinetic energy of the system in J

//Output
printf('The moment of inertia is %i kg.m^2 \n Kinetic energy of the system is %i J',I,KE)
