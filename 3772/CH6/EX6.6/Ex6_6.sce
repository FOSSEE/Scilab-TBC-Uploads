// Problem no 6.6,Page No.158

clc;clear;
close;

L=10 //m //span of beam
W=10*10**3 //N //Point Load
a=6 //m //Distance from left end of beam to point Load
b=4 //m ////Distance from right end of beam to point Load
E=210*10**9 
I=10**-4 //m //M.I of beam

//Calculation 

//slope at left end is given by
theta_A=W*b*(L**2-b**2)*(6*E*I*L)**-1 //radian

//Deflection under Load is
y_c=W*a*b*(L**2-a**2-b**2)*(6*E*I*L)**-1*10**3 //mm

//Maximum Deflection of the beam is
y_max=W*a*(L**2-a**2)**1.5*(15.588457*E*I*L)**-1*10**3 //mm

//Result
printf("slope at left end is %.5f radian",theta_A)
printf("\n Deflection under Load is %.2f mm",y_c)
printf("\n #Maximum Deflection of the beam is %.2f mm",y_max)
