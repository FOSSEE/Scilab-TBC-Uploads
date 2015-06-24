//Initilization of variables
P=50 //N
Q=100 //N
beta=15 //degree // angle between P& the horizontal
theta=45 //degree // angle between the resultant (R) & the horizontal
//Calculations
Rx=P*cosd(beta)+Q*cosd(theta) //N
Ry=P*sind(beta)+Q*sind(theta) //N
R=sqrt((Rx^2)+(Ry^2)) //N
alpha=atand(Ry/Rx) //degree
//Results
clc
printf('The magnitude of the resultant is %f N \n',R)
printf('The ange of the resultant with x-axis is %f degree \n',alpha)
