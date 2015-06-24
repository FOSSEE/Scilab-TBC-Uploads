//Initilization of variables
P=50 //N
Q=100 //N
alpha=30 //degree //angle made by Rq with +ve Y-axis
//Calculations
theta=atand((P*cotd(alpha)-Q*tand(alpha))/(P+Q)) //degree
T=Q/(cosd(theta)*cotd(alpha)-sind(theta)) //N
//Results
clc
printf('The tension in the string is %f N \n',T)
printf('The angle wich the string makes with the horizontal when the system is in equilibrium is %f N \n',theta)
