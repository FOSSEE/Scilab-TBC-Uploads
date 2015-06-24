clc 
// Given that
alpha_b = 6 // Back rake angle in Degree
alpha_s = 10 // Side rake angle in Degree
gama = 5 // Front clearance angle in Degree
gama_ = 7 // Side clearance angle in Degree
Shi = 10 // End cutting edge angle in Degree
shi = 30 // Side cutting edge angle in Degree
r= 0.55 // Nose radius in mm
d = 2.5 // Depth of cut in mm
f = 0.125 // Feed in mm/revolution
N = 300 // Rpm of the job
T_S = 400 // Ultimate shear stress of the workpiece in N/mm^2
mu = .6 // Cofficient of the friction between the tool and the chip
// Sample Problem 12 on page no. 225
printf("\n # PROBLEM 4.12 # \n")
lambda = atand(mu)
alpha= atand(((tand(alpha_b) * sind(shi) ) + (tand(alpha_s) * (cosd(shi))))/ (sqrt(1+((tand(alpha_b)*cosd(shi)) - (tand(alpha_s)*sind(shi)))^(2))))
phi = 45 + alpha - lambda
t1 = f*cosd(phi)
w = d/cosd(phi)
Fc = w*t1*T_S*(cosd(lambda-alpha))/((sind(phi))*(cosd(phi+lambda-alpha)))
Ft = Fc*tand(lambda-alpha)
Ff = Ft*cosd(shi)
Fr = Ft*sind(shi)
printf(" \n Component of the machining force are as follows -\n Feed force component = % d N, \n Normal thrust force component = % d N.",ceil(Ff),ceil(Fr))
