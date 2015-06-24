//Initilization of variables
F3=500 //N
alpha=60 //degree //angle made by F3 with F2
beta=40 //degree //angle made by F1 with F3
theta=80 //degree //angle made by F1 with F2
//Calculations
// Solving by using law of sines
F1=(F3*sind(alpha)/sind(theta)) //N //by law of sines
F2=(F3*sind(beta)/sind(theta)) //N //by law of sines
//Resuts
clc
printf('The force F1 is %f N \n',F1)
printf('The force F2 is %f N \n',F2)
