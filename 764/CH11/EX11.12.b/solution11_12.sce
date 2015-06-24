
//Obtain path of solution file
path = get_absolute_file_path('solution11_12.sce')
//Obtain path of data file
datapath = path + filesep()+'data11_12.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Final angular velocity of the shoe w2 (rad/s)
w2 = (2 * %pi * n2)/60
//Initial angular velocity of the shoe w1 (rad/s)
w1 = (2 * %pi * n1)/60
//Evaluate torque transmitting capacity Mt (N-mm)
Mt = (kW * 60 * (10^6))/(2 * %pi * n2)
//Evaluate mass of each shoe m (kg)
m = (1000 * Mt)/(mu * rg * rd * z * ((w2^2)-(w1^2))) 
//Assume arc of contact of shoe subtends 70 degree at the centre of spider
theta = 70
//Evaluate contact length of the friction lining l (mm)
l = rd * (theta * (%pi/180))
//Evaluate width of friction lining b (mm)
b = (m * rg * ((w2^2)-(w1^2)))/(Pa * l * 1000)
//Print results
printf('\nResults\n')
printf('\nMass of each shoe(m) = %f kg\n',m)
printf('\nDimensions of friction lining are as follows:\n')
printf('\nContact length of friction lining with drum(l) = %f mm\n',l)
printf('\nWidth of friction lining(b) = %f mm\n',b)
