//To find angle of inclination
clc
//Given:
m=250 //kg
IE=0.3, IW=1 //kg-m^2
G=5
h=0.6, rW=300/1000, R=50 //m
v=90*1000/3600 //m/s
//Solution:
//Calculating the angle of inclination with respect to the vertical of a two wheeler
//Equating total overturning couple to balancing couple,
theta=atand((1/(m*9.81*h))*((v^2/(R*rW)*(2*IW+G*IE))+(m*v^2/R*h))) //degrees
//Results:
printf("\n\n Angle of inclination with respect to the vertical of a two wheeler, theta = %.2f degrees.\n\n",theta)