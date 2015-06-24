clc 
// Given that
alpha = 10 // Rake angle of tool in Degree
v = 200 // Cutting speed in m/min
t1 = 0.2 // Uncut thickness in mm
w = 2 // Width of cut in mm
mu = 0.5 // Avg value of the cofficient of tbe friction
T_S = 400 // Shear stress of the work material in N/mm^2
Cm = 70 // Machining constant in Degree
// Sample Problem 4 on page no. 194
printf("\n # PROBLEM 4.4 # \n")
lambda = atand(mu)
phi = (Cm + alpha - lambda)/2
Fs = (w*t1*T_S)/(sind(phi))
R = Fs/(cosd(phi+lambda-alpha))
Fc = R*(cosd(lambda-alpha))
Ft = R*(sind(lambda-alpha))
// Using Lee and Shaffer relation 
phi_ = 45-lambda+alpha
Fs_ = (w*t1*T_S)/(sind(phi_))
R_ = Fs_/(cosd(phi_+lambda-alpha))
Fc_ = R_*(cosd(lambda-alpha))
Ft_ = R_*(sind(lambda-alpha))
printf("\n Shear angle = %f°, \n Cutting force = %f N, \n Thrust force = %f N \n Using Lee and Shaffer relation- \n Shear angle = %f°, \n Cutting force = %f N, \n Thrust force = %f N,",phi,Fc,Ft,phi_,Fc_,Ft_)
// Answer in the book for cutting force is given as 486.9 N and for thrust force is given as 144.9 N , When using Lee and Shaffer relation answer in the book for cutting force is given as 481.9 N and for trust force is given as 160.6 N
