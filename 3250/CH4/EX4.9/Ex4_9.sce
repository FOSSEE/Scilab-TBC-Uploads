clc 
// Given that
d= 4 // Depth of cut in mm
f = 0.25 // Feed in mm/stroke
alpha = 10 // Rake angle in degree
shi = 30 // Principal cutting edge angle in Degree
mu =0.6 // Cofficient of friction between chip and tool
T_s = 340 // Ultimate shear stress of cast iron in N/mm^2
// Sample Problem 9 on page no. 220
printf("\n # PROBLEM 4.9 # \n")
lambda = atand(mu)
phi = 45 +alpha-lambda
Fc = f*d*T_s*(cosd(lambda-alpha))/((sind(phi))*(cosd(phi+lambda-alpha)))
Ft = Fc*(sind(lambda-alpha))/(cosd(lambda-alpha))
Ff = Ft*(cosd(shi))
Fn = Ft*(sind(shi))
printf(" \n The three components of machinig force are as follows-\n Thrust force = %d N,\n Feed force component = %d N,\n Normal thrust force component = %d N.",Ft,Ff,Fn)

