//Initilization of variables
m_A=40 //kg
m_B=15 //kg
F=500 //N
g=9.8 //m/s^2
theta=30 //degrees
//Calculations
m=m_A+m_B //kg
a=(F-m*g*sind(theta))/(m) //m/s^2
//Summing forces parallel and perpendicular to the plane
//Simplfying equation (1) and (2)
Nb=m_B*g+(m_B*a*sind(theta)) //N
//Substituting this in eq(1)
u=-(m_B*g*cosd(theta)-(Nb*cosd(theta)))/(Nb*sind(theta))
//Result
clc
printf('The value of u is %f',u)
