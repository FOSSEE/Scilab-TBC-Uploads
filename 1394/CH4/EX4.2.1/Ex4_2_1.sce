
clc
//initialization of variables
z = 80 // metres
c1 = 410 //ppm
c = 860 // ppm
d = 2 //km
v = 0.6 //km/hr
r = 3600 //sec/hr
//Calculations
t1 = (d/v)*r//sec
E = (-((z^2)/(4*t1))/(log(410/860)))*10^4// cm^2/sec//answer in textbook is wrong
d2 = 15 //km
c2 = c*(sqrt(d/d2))//ppm
//Results
printf("The value of dispersion coefficent is %.f cm^2/sec",E)
printf("\n The value of maximum concentration  at 15 km downstream is %.f ppm",c2)





