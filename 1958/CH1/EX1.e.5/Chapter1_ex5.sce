clc
clear
m=100//Mass of block in kg
F=500//Force in N
q=30//Angle made with the horizontal in degrees
u=0.4//Coefficient of sliding friction

//Calculations
R=m*9.8//Reaction force in N
f=(u*R)//Frictional force in N
a=(F*cosd(q)-f)/m//Acceleration of the block in m/s^2

//Output
printf('The acceleration of the block is %3.2f m/s^2',a)
