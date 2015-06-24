clc
//initialisation of variables
t= 68.9 //sec
t1= 102.2 //sec
p1= 0.866 //g/cm^3
p2= 0.998 //gm/cm^3
n= 0.01009 //dynesc/cm^2
//CALCULATIONS
N= n*t*p1/(t1*p2)
//RESULTS
printf (' viscosity of toulene= %.5f dyne sec/cm^2 ',N)
