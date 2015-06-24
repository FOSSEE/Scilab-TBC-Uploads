clc 
// Given that
d= 4 // Depth of cut in mm
f = 0.25 // Feed in mm/stroke
alpha = 10 // Rake angle in degree
shi = 30 // Principal cutting edge angle in Degree
mu =0.6 // Cofficient of friction between chip and tool
T_s = 340 // Ultimate shear stress of cast iron in N/mm^2
N = 60 // Cutting stroke/min
L = 200 // Length of the job in mm
H = 180 // Hardness of the workpiece in BHN
// Sample Problem 10 on page no. 221
printf("\n # PROBLEM 4.10 # \n")
lambda = atand(mu)
phi = 45 +alpha-lambda
Fc = f*d*T_s*(cosd(lambda-alpha))/((sind(phi))*(cosd(phi+lambda-alpha)))
Fc_ = Fc*(L/1000)
Wav  =Fc_*N/60
t1 = f*cosd(shi)
U_0 = 0.81 // By using table 4.4 given in the book, In J/mm^3
Uc = U_0*((t1)^(-.4))
Q = f*d*L*N/60
Wav_ = Uc*Q
printf(" \n Avg power consumption = %d W,\n Specific power consumption when hardness of the workpiece is 180 BHN = %d W.",Wav,Wav_)
// Answer in the book for Specific power consumption is given as 294 W
