// Initilization of variables
d1=0.6 //m // diameter of larger pulley
d2=0.3 //m // diameter of smaller pulley
d=3.5 //m // separation between the pulleys
pie=3.14
// Calculations
r1=d1/2 //m // radius of larger pulley
r2=d2/2 //m // radius of smaller pulley
theta=asind((r1+r2)/d) //degree
// Angle of lap for both the pulleys is same, i.e
beta=180+(2*theta) // degree
L=((pie*(r1+r2))+(2*d)+((r1-r2)^2/d)) //cm // Length of the belt
// Results
clc
printf('The angle of lap for the pulley is %f degree \n',beta)
printf('The length of pulley required is %f m \n',L)
