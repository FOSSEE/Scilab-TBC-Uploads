//Resultant of three forces that are acting on a hook
//Resolving all forces along x and y axis gives
Fx=70*cosd(50)+80*cosd(25)+50*cosd(45)  //N
Fy=70*sind(50)+80*sind(25)-50*sind(45)  //N
R=sqrt(Fx^2+Fy^2)  //N
alpha=atand(Fy/Fx)  //degree
printf("\nThe resultant is R=%.1f N \nThe inclination of resultant w.r.t. positive x-axis is alpha=%.2f degree",R,alpha)
//The answers vary due to round off error
