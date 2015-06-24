
//Obtain path of solution file
path = get_absolute_file_path('solution12_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the mass of the disk m (kg)
m = (%pi/4)*(D^2 * t * rho)
//Calculate the radius of gyration of the disk k (m)
k = D/sqrt(8)
//Calculatet the initial angular speed of the disk w1 (rad/s)
w1 = (2 * %pi * n1)/60
//Calculate the energy absorbed by the brakes (J)
E = (1/2)*(m * k^2 * (w1^2 - w2^2))
//Calculate the average velocity during the braking period wavg (rad/s)
wavg = (w1 + w2)/2
//Calculate the torque capacity of the brake Mt (N-m)
Mt = E/(wavg * ts)
//Print results
printf("\nEnergy absorbed by the brakes(E) = %f J\n",E)
printf("\nTorque capacity of the brakes(Mt) = %f N-m\n",Mt)
