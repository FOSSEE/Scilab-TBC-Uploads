//Initilization of variables
W=2500 //N //This load acts at point B and C.
alpha=30 //degree // angle made by T1 with +ve y-axis & T2 with +ve x-axis
//Calculations
T2=W-(((cosd(alpha))^2/(sind(alpha)))-(sind(alpha))) // N // substuting eq'n 1 in 2
T1=(T2*cosd(30))/(sind(30)) //N // using eq'n 1
T3=T2 //N // By equilibrium eq'n at point C(sumFx=0)
//Results
clc
printf('Tension in portion AB is %f N \n',T1)
printf('Tension in portion BC is %f N \n',T2)
printf('Tension in portion CD is %f N \n',T3)
