clc 
// Given that
D = 20 // Nominal diameter of the drill in mm
T_S = 400 // Shear yield stress of work material in N/mm^2
N = 240 // Rpm
f = 0.25 // Feed in mm/revolution
mu = 0.6 // Cofficient of friction
// Sample Problem 14 on page no. 230
printf("\n # PROBLEM 4.14 # \n")
Beta = 118/2 // From the table 4.12 given in the book
shi = 30 // From the table 4.12 given in the book
alpha = atand(((2*(D/4)/(D))*tand(shi))/sind(Beta))
t1 = (f/2)*sind(Beta)
w = (D/2)/sind(Beta)
lambda = atand(mu)
phi = 45+alpha-lambda
t1 = f/2
Fc = w*t1*T_S*(cosd(lambda-alpha))/((sind(phi))*(cosd(phi+lambda-alpha)))
Ft = w*t1*T_S*(sind(lambda-alpha))/((sind(phi))*(cosd(phi+lambda-alpha)))
M = .6*Fc*D/1000
F = 5*Ft*sind(Beta)
printf(" \n The drilling torque = %f N-m, \n Thrust force = %d N.",M,F)
// Answer in the book for drilling torque is given as 18.2 N-m, and for thrust force is given as 1500 N
