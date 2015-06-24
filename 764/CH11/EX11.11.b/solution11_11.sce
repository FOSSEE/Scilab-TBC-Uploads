
//Obtain path of solution file
path = get_absolute_file_path('solution11_11.sce')
//Obtain path of data file
datapath = path + filesep()+'data11_11.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
printf('\nApplying uniform-wear theory\n')
//Convert alpha into radians
alpha = alpha * (%pi/180)
//Initial angular velocity w1 (rad/s)
w1 = 0
//Final angular velocity w2 (rad/s)
w2 = (2 * %pi * n)/60
//Evaluate angular acceleration of the cone clutch a (rad/s2)
a = (w2 - w1)/t
//Evaluate the torque transmitting capacity Mt (N-mm)
Mt = (m * ((k/1000) ^ 2) * a)*1000
//Evaluate ratio D/d 
ratio = (4 + sin(alpha))/(4 - sin(alpha))
//Substitute the value of d/D in the torque transmitting capacity equation
d = ((Mt * 8 * sin(alpha))/((%pi * mu * Pa)*((ratio^2) - 1)))^(1/3)
//Evaluate the outer diameter of the cone clutch D (mm)
D = d * ratio
//Mean radius of the clutch is twice the face width
//Evaluate the face width of the friction lining b (mm)
b = (D + d)/8
//Evaluate the force required to engage the clutch P (N)
P = (4 * Mt * sin(alpha))/(mu * (D + d))
wavg = (w1 + w2)/2
//Evaluate the displacement of the cone clutch θ (rad)
theta = wavg * t
//Evaluate the heat generated during each engagement Hg (kJ)
Hg = ((Mt/1000) * theta)/1000
//Print results
printf('\nResults\n')
printf('\nInner diameter of the cone clutch(d) = %f mm\n',d)
printf('\nOuter diameter of the cone clutch(D) = %f mm\n',D)
printf('\nFace width of the friction lining(b) = %f mm\n',b )
printf('\nForce required to engage the clutch(P) = %f N\n',P)
printf('\nHeat energy generated during clutch engagemant(Hg) = %f kJ\n',Hg)

