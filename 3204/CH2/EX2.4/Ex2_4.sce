//Initilization of variables
Tac=3.5 //kN
Tbc=3.5 //kN
alpha=20 //degree //angle made by Tac with -ve X axis
beta=50 //degree //angle made by Tbc with +ve X axis
//Calculations
theta=atand(((Tac*sind(alpha))+(Tbc*sind(beta)))/((Tac*cosd(alpha))-(Tbc*cosd(beta)))) //degree
P=Tac*(cosd(alpha)-cosd(beta))/(cosd(theta)) //kN // from eq'n 1
//Results
clc
printf('The maximum force that can be applied is %f kN \n',P)
printf('The direction of applied force is %f  degree \n',theta)
