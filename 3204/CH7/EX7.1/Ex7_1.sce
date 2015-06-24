// Initilization of variables
d1=24 // cm // diameter of larger pulley
d2=12 // cm // diameter of smaller pulley
d=30 //cm // seperation betweem 1st & the 2nd pulley
pie=3.14
// Calcuations
r1=d1/2 //cm // radius of 1st pulley
r2=d2/2 //cm // radius of 2nd pulley
theta=asind((r1-r2)/d) //degrees 
// Angle of lap
beta_1=180+(2*theta) //degree // for larger pulley
beta_2=180-(2*theta) //degree //for smaller pulley
L=pie*(r1+r2)+(2*d)+((r1-r2)^2/d) //cm // Length of the belt
// Results
clc
printf('The angle of lap for the larger pulley is %f degree \n',beta_1)
printf('The angle of lap for the smaller pulley is %f degree \n',beta_2)
printf('The length of pulley required is %f cm \n',L)
