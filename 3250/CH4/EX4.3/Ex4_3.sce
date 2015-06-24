clc 
// Given that
alpha = 10 // Rake angle of tool in Degree
v = 200 // Cutting speed in m/min
t1 = 0.2 // Uncut thickness in mm
w = 2 // Width of cut in mm
mu = 0.5 // Avg value of the cofficient of tbe friction
T_S = 400 // Shear stress of the work material in N/mm^2
// Sample Problem 3 on page no. 193
printf("\n # PROBLEM 4.3 # \n")
lambda = atand(mu)
phi = (90 + alpha - lambda)/2
Fs = (w*t1*T_S)/(sind(phi))
R = Fs/(cosd(phi+lambda-alpha))
Fc = R*(cosd(lambda-alpha))
Ft = R*(sind(lambda-alpha))
printf("\n Shear angle = %f°, \n Cutting force = %d N, \n Thrust force = %d N,",phi,Fc,Ft)
// Answer in the book for cutting force is given as 420 N and for thrust force is given as 125 N
